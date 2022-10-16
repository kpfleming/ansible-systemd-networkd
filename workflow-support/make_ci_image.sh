#!/usr/bin/env bash

set -ex

scriptdir=$(realpath "$(dirname "${BASH_SOURCE[0]}")")
base_image=${1}; shift
image_name=${1}; shift

lint_deps=(shellcheck)

c=$(buildah from "${base_image}":bullseye-main)

buildcmd() {
    buildah run --network host "${c}" -- "$@"
}

buildcmd apt-get update --quiet=2
buildcmd apt-get install --yes --quiet=2 "${lint_deps[@]}"

buildcmd apt-get autoremove --yes --purge
buildcmd apt-get clean autoclean
buildcmd sh -c "rm -rf /var/lib/apt/lists/*"

buildah copy "${c}" "${scriptdir}/../tox.ini" /root/tox.ini
buildcmd tox -eALL --notest --workdir /root/tox

buildcmd rm -rf /root/.cache

if buildah images --quiet "${image_name}"; then
    buildah rmi "${image_name}"
fi
buildah commit --squash --rm "${c}" "${image_name}"
