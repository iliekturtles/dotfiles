{{#if (eq dotter.os "windows")}}
MSYS_NO_PATHCONV=1 cmd /c "{{dotter.current_dir}}\neovim\dotupdate.bat"

{{#if dotter.packages.neovide}}
neovide +NeovideRegisterRightClick +qall
{{/if}}
{{else}}
true # Empty function.
{{/if}}
