# Load environment variables.
while read -r line
do
    export "$(echo $line | envsubst)"
done < <(sed -r '/^\s*(#.*)?$/d' ~/.config/environment.d/envvars.conf)

# Source bashrc.
[[ -f ~/.bashrc ]] && . ~/.bashrc
