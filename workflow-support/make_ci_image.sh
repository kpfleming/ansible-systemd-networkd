#!/usr/bin/env bash

set -ex

scriptdir=$(realpath "$(dirname "${BASH_SOURCE[0]}")")

lintdeps=(shellcheck)

c=$(buildah from quay.io/km6g-ci-images/python:bullseye-main)

buildcmd() {
    buildah run --network host "${c}" -- "$@"
}

buildcmd apt-get update --quiet=2
buildcmd apt-get install --yes --quiet=2 "${lintdeps[@]}"

buildcmd apt-get autoremove --yes --purge
buildcmd apt-get clean autoclean
buildcmd sh -c "rm -rf /var/lib/apt/lists/*"

buildah copy "${c}" "${scriptdir}/../tox.ini" /root/tox.ini
buildcmd tox -eALL --notest --workdir /root/tox

buildcmd rm -rf /root/.cache

# shellcheck disable=SC2154 # image_name set in external environment
if buildah images --quiet "${image_name}"; then
    buildah rmi "${image_name}"
fi
buildah commit --squash --rm "${c}" "${image_name}"
