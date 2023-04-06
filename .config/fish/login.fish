# Load environment variables.
for line in (sed -r '/^\s*(#.*)?$/d' ~/.config/environment.d/envvars.conf)
    export (echo $line | envsubst)
end
