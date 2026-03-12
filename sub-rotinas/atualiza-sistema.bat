@echo off
setlocal

git pull

REM captura retorno do git
if errorlevel 1 (
    echo.
    echo ERRO ao executar git pull.
    exit /b 4
)

echo.

exit /b 0