REM =============================
REM Arquivos de configuracao
REM =============================

set CONFIG_PROJETOS=%ROOT%config\config-projetos.conf
set CONFIG_GERAL=%ROOT%config\config-geral.conf

if not exist "%CONFIG_PROJETOS%" (
    echo Arquivo projetos-config.txt nao encontrado!
    call "%ROOT%subrotinas\adicionar-projeto.bat"
    exit /b
)

if not exist "%CONFIG_GERAL%" (
    echo Arquivo config.txt nao encontrado!
    pause
    exit /b
)

REM =============================
REM Ler configuracoes gerais
REM =============================
for /f "tokens=1,2 delims==" %%A in (%CONFIG_GERAL%) do (
    if /I "%%A"=="criarbackups" set CRIAR_BACKUPS=%%B
)

if "!CRIAR_BACKUPS!"=="" set CRIAR_BACKUPS=true