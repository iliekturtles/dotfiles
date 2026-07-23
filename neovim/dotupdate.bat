REM Manually set $CC so that Neovim does not warn about a missing C compiler. Other environment
REM setup is not included and Visual Studio Developer Command Prompt needs to be used to update
REM tree-sitter grammars.
CALL "C:\Program Files\Microsoft Visual Studio\18\Professional\Common7\Tools\VsDevCmd.bat"

FOR /F "delims=" %%i IN ('where clang') DO SET CC=%%i

reg add "HKEY_CURRENT_USER\Environment" /v CC /d "%CC%" /f
