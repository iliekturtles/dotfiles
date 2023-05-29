#!/usr/bin/bash
set -o errexit
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then
    set -o xtrace
fi
cd "$(dirname "$0")"

# Run dotter with configuration in the `dotter` subdirectory.
#
# Usage: `./dotter.sh [OPTIONS] [COMMAND]`
#
# Example: `./dotter.sh deploy -v`
# Example: `./dotter.sh watch -v`
# Example: `bash -c './dotter.sh deploy -vp <<<"variables.shell.EDITOR = \"nvim\"'`
# Example: `cat variables.toml | ./dotter.sh deploy -vp`

# Ensure XDG variable initialization. Definitions are duplicated in dotter/global.toml.
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_STATE_HOME=${XDG_STATE_HOME:-$HOME/.local/state}

# Run dotter.
dotter -g "dotter/global.toml" -l "dotter/$HOSTNAME.toml" \
    --cache-file "$XDG_CACHE_HOME/dotter/cache.toml" \
    --cache-directory "$XDG_CACHE_HOME/dotter" \
    --pre-deploy "dotter/pre_deploy.sh" \
    --post-deploy "dotter/post_deploy.sh" \
    --pre-undeploy "dotter/pre_undeploy.sh" \
    --post-undeploy "dotter/post_undeploy.sh" \
    "$@"
