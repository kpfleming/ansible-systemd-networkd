#!/usr/bin/env bash

set -ex

scriptdir=$(realpath "$(dirname "${BASH_SOURCE[0]}")")
containersrcdir="/__w/${GITHUB_REPOSITORY##*/}/${GITHUB_REPOSITORY##*/}"
base_image=${1}; shift
image_name=${1}; shift

lint_deps=(shellcheck)

toxenvs=(lint-action py311-ci-action publish-action)

c=$(buildah from "${base_image}")

build_cmd() {
    buildah run --network host "${c}" -- "$@"
}

build_cmd_with_source() {
    buildah run --network host --volume "$(realpath "${scriptdir}/.."):${containersrcdir}" --workingdir "${containersrcdir}" "${c}" -- "$@"
}

build_cmd apt-get update --quiet=2
build_cmd apt-get install --yes --quiet=2 "${lint_deps[@]}"

for env in "${toxenvs[@]}"; do
    build_cmd_with_source tox exec -e "${env}" -- pip list
done

build_cmd apt-get autoremove --yes --purge
build_cmd apt-get clean autoclean
build_cmd sh -c "rm -rf /var/lib/apt/lists/*"

build_cmd rm -rf /root/.cache

if buildah images --quiet "${image_name}"; then
    buildah rmi "${image_name}"
fi
buildah commit --squash --rm "${c}" "${image_name}"
