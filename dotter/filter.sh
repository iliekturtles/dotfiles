#!/usr/bin/bash
set -o errexit
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then
    set -o xtrace
fi
cd "$(dirname "$0")"

declare -a args

function remove_section() {
    local section="$1"

    args+=(-e "/^\[$section\]/,/^\$/d")
}

function remove_section_key() {
    local section="$1"
    local key="$2"

    args+=(-e "/^\[$section\]/,/^\$/{/^$key=/d}")
}

function remove_key() {
    local key="$1"

    args+=(-e "/^$key=/d")
}

case "$1" in
    *) # Do no transformations.
        cat
        exit 0
        ;;
esac

sed -E "${args[@]}"
