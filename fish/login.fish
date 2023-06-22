{{#if dotter.packages.systemd}}
# Load environment variables.
for line in (sed -r '/^\s*(#.*)?$|^\s*PATH=/d' ~/.config/environment.d/envvars.conf)
    export (echo $line | envsubst)
end

{{/if}}
# Update PATH.
{{#if (and dotter.packages.msys2 dotter.packages.git)}}
fish_add_path -pg "~/AppData/Local/Programs/Git/cmd"
{{/if}}
{{#if dotter.packages.rust}}
fish_add_path -pg "$CARGO_HOME/bin"
{{/if}}
{{#each shell.PATH_PREFIX}}
fish_add_path -pg "{{this}}"
{{/each}}
{{#each shell.PATH_SUFFIX}}
fish_add_path -ag "{{this}}"
{{/each}}
