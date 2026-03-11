@echo off
setlocal enabledelayedexpansion

set CONFIG_DIR=%ROOT%config
set CONFIG_FILE=%CONFIG_DIR%\config-projetos.conf

echo =============================
echo Cadastro de novo projeto
echo =============================

set /p NOME_PROJETO=Digite o nome do projeto: 

echo O nome armazenado foi: "%NOME_PROJETO%"

set /p CAMINHO_PROJETO=Digite o caminho do projeto: 

echo O caminho armazenado foi: "%CAMINHO_PROJETO%"

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
    echo !NOME_PROJETO!=!CAMINHO_PROJETO!\pom.xml > "%CONFIG_FILE%"
) else (
    echo !NOME_PROJETO!=!CAMINHO_PROJETO!\pom.xml >> "%CONFIG_FILE%"
)

echo.
echo Projeto adicionado:
echo !NOME_PROJETO!=!CAMINHO_PROJETO!

exit /b