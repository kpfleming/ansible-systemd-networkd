#!/usr/bin/env bash

set -ex

scriptdir=$(realpath "$(dirname "${BASH_SOURCE[0]}")")
containersrcdir="/__w/${GITHUB_REPOSITORY##*/}/${GITHUB_REPOSITORY##*/}"
base_image=${1}; shift
image_name=${1}; shift

# remove these build deps once there are 'cffi' wheels for Python 3.14
proj_build_deps=(gcc libffi-dev)
lint_deps=(shellcheck)
publish_deps=(yq)

toxenvs=(lint-action py3{11,12,13,14}-ci-action publish-action)

c=$(buildah from "${base_image}")

build_cmd() {
    buildah run --network host "${c}" -- "$@"
}

build_cmd_with_source() {
    buildah run --network host --volume "$(realpath "${scriptdir}/.."):${containersrcdir}" --workingdir "${containersrcdir}" "${c}" -- "$@"
}

build_cmd apt update --quiet=2
build_cmd apt install --yes --quiet=2 "${proj_build_deps[@]}" "${lint_deps[@]}" "${publish_deps[@]}"

build_cmd uv tool install --python python3.13 --no-cache tox --with tox-uv

build_cmd mkdir /tox
buildah copy "${c}" "${scriptdir}/tox-config.ini" /tox/config.ini
buildah config --env TOX_USER_CONFIG_FILE=/tox/config.ini "${c}"

for env in "${toxenvs[@]}"; do
    build_cmd_with_source tox exec -e "${env}" -- uv pip list
done

if [ -n "${proj_build_deps[*]}" ]
then
    build_cmd apt remove --yes --purge "${proj_build_deps[@]}"
fi
build_cmd apt autoremove --yes --purge
build_cmd apt clean autoclean
build_cmd sh -c "rm -rf /var/lib/apt/lists/*"

build_cmd rm -rf /root/.cache

build_cmd git config --system --add safe.directory "${containersrcdir}"

if buildah images --quiet "${image_name}"; then
    buildah rmi "${image_name}"
fi
buildah commit --squash --rm "${c}" "${image_name}"
