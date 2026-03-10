@echo off
setlocal enabledelayedexpansion

set CONFIG_DIR=%ROOT%config
set CONFIG_FILE=%CONFIG_DIR%\config-projetos.conf

echo =============================
echo Cadastro de novo projeto
echo =============================

set /p NOME_PROJETO=Digite o nome do projeto: 
set /p CAMINHO_PROJETO=Digite o caminho do projeto: 

REM remover espaços no inicio
for /f "tokens=* delims= " %%A in ("%NOME_PROJETO%") do set NOME_PROJETO=%%A
for /f "tokens=* delims= " %%A in ("%CAMINHO_PROJETO%") do set CAMINHO_PROJETO=%%A

REM remover espaços no fim
:trim_nome
if "!NOME_PROJETO:~-1!"==" " (
    set NOME_PROJETO=!NOME_PROJETO:~0,-1!
    goto trim_nome
)

:trim_caminho
if "!CAMINHO_PROJETO:~-1!"==" " (
    set CAMINHO_PROJETO=!CAMINHO_PROJETO:~0,-1!
    goto trim_caminho
)

if "!NOME_PROJETO!"=="" (
    echo Nome do projeto nao pode ser vazio.
    exit /b 1
)

if "!CAMINHO_PROJETO!"=="" (
    echo Caminho do projeto nao pode ser vazio.
    exit /b 1
)

if not exist "%CONFIG_DIR%" (
    mkdir "%CONFIG_DIR%"
)

if not exist "%CONFIG_FILE%" (
    echo !NOME_PROJETO!=!CAMINHO_PROJETO! > "%CONFIG_FILE%"
) else (
    echo !NOME_PROJETO!=!CAMINHO_PROJETO! >> "%CONFIG_FILE%"
)

echo.
echo Projeto adicionado:
echo !NOME_PROJETO!=!CAMINHO_PROJETO!

exit /b