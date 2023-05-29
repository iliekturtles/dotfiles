{{#if (eq dotter.os "windows")}}
: 'Windows polyglot bat->sh shim.
@echo off
for /F "usebackq delims=" %%F IN (`cygpath %~f0`) do bash "%%F" %*
exit /b %errorlevel%
'
{{else}}
#!/usr/bin/bash
{{/if}}
set -o errexit
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then
    set -o xtrace
fi
{{! Package scripts, $package/$stage_deploy.sh }}
{{#each dotter.packages}}
{{assign "deploy" (concat @key "/" ../stage ".sh")}}{{#if (and this (command_success (concat "test -f " ../deploy)))}}
# {{@key}}.
{{include_template ../deploy}}
{{/if}}
{{/each}}
