@echo off
setlocal

REM pasta base do script

set CONFIG_DIR=%ROOT%config
set CONFIG_FILE=%CONFIG_DIR%\config-projetos.conf

echo =============================
echo Cadastro de novo projeto
echo =============================

set /p NOME_PROJETO=Digite o nome do projeto: 
set /p CAMINHO_PROJETO=Digite o caminho do projeto: 

if "%NOME_PROJETO%"=="" (
    echo Nome do projeto nao pode ser vazio.
    exit /b 1
)

if "%CAMINHO_PROJETO%"=="" (
    echo Caminho do projeto nao pode ser vazio.
    exit /b 1
)

REM cria pasta config se nao existir
if not exist "%CONFIG_DIR%" (
    mkdir "%CONFIG_DIR%"
)

REM cria arquivo se nao existir
if not exist "%CONFIG_FILE%" (
    echo Criando arquivo de configuracao...
    echo %NOME_PROJETO%=%CAMINHO_PROJETO% > "%CONFIG_FILE%"
) else (
    echo %NOME_PROJETO%=%CAMINHO_PROJETO% >> "%CONFIG_FILE%"
)

echo.
echo Projeto adicionado com sucesso!
echo %NOME_PROJETO%=%CAMINHO_PROJETO%

exit /b 0