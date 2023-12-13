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
    "kde/"*)
        remove_section "\\\$Version"
        remove_section_key "KFileDialog Settings" "Recent (File|URL)s\\[\\\$e\\]"
        remove_key "lastScreen"
        ;;&
    "kde/dolphinrc")
        remove_section_key "General" "ViewPropsTimestamp"
        remove_section_key "KPropertiesDialog" "[0-9]+ screens?: (Height|Width)"
        remove_section_key "KPropertiesDialog" "eDP-1 (Height|Width) [0-9]+x[0-9]+ eDP-1"
        ;;
    "kde/gwenviewrc")
        remove_section "Recent Files"
        remove_section_key "MainWindow" "State"
        remove_section_key "MainWindow" "[0-9]+ screens?: Window-Maximized"
        remove_section_key "SideBar" "InformationSplitterSizes"
        remove_section_key "SideBar" "SideBarSplitterSizes"
        ;;
    "kde/kconf_updaterc")
        remove_key "ctime"
        remove_key "mtime"
        ;;
    "kde/kdeglobals")
        remove_section_key "DirSelect Dialog" "History Items\\[\\\$e\\]"
        ;;
    "kde/plasma-org.kde.plasma.desktop-appletsrc")
        remove_section_key "ScreenMapping" "screenMapping"
        remove_key "DialogHeight"
        remove_key "DialogWidth"
        remove_key "ItemGeometries[^=]*"
        remove_key "popupHeight"
        remove_key "popupWidth"
        remove_key "PreloadWeight"
        ;;
    "kde/plasmashellrc")
        remove_key "PreloadWeight"
        ;;
    "kde/spectaclerc")
        remove_section "Save"
        remove_section_key "GuiConfig" "window-position"
        ;;
    "kde/systemmonitorrc")
        remove_section_key "General" "height"
        remove_section_key "General" "lastVisitedPage"
        remove_section_key "General" "maximized"
        remove_section_key "General" "width"
        remove_section_key "TaskDialog" "headerState"
        ;;
    "kde/systemsettingsrc")
        remove_section_key "MainWindow" "[0-9]+x[0-9]+ screen: (Height|Width)"
        remove_section_key "MainWindow" "State"
        ;;
    *) # Do no transformations.
        cat
        exit 0
        ;;
esac

sed -E "${args[@]}"
