echo "Applying user registry updates..."
MSYS2_ARG_CONV_EXCL=\* regedit /S "$(cygpath -m "{{dotter.current_dir}}")"/windows/HKCU*.reg

if net session 2>/dev/null; then
    echo "Applying machine registry updates..."
    MSYS2_ARG_CONV_EXCL=\* regedit "$(cygpath -m "{{dotter.current_dir}}")"/windows/HKLM*.reg
else
    echo "WARNING: Machine registry updates not applied. Re-run in elevated prompt."
    echo "    dotupdate windows"
fi
