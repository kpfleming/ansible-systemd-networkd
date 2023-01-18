#!/usr/bin/env bash

set -ex

base_image=${1}; shift
image_name=${1}; shift

lint_deps=(shellcheck)

toxenvs=(lint-action py311-ci-action publish-action)

c=$(buildah from "${base_image}")

buildcmd() {
    buildah run --network host "${c}" -- "$@"
}

buildcmd apt-get update --quiet=2
buildcmd apt-get install --yes --quiet=2 "${lint_deps[@]}"

for env in "${toxenvs[@]}"; do
    buildcmd tox exec -e "${env}" -- pip list
done

buildcmd apt-get autoremove --yes --purge
buildcmd apt-get clean autoclean
buildcmd sh -c "rm -rf /var/lib/apt/lists/*"

buildcmd rm -rf /root/.cache

if buildah images --quiet "${image_name}"; then
    buildah rmi "${image_name}"
fi
buildah commit --squash --rm "${c}" "${image_name}"
