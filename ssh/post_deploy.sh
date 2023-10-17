# Ensure ~/.ssh only has user permissions.
{{#if ssh.connection-sharing}}
mkdir -p ~/.ssh/sockets
{{/if}}
chmod u=rwX,g=,o= -R ~/.ssh
