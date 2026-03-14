@echo off
set CONFIG=config\projetos.conf

if not exist %CONFIG% (
    echo Nenhum projeto cadastrado.
    pause
    goto MENU
)

echo Projetos cadastrados:
echo.

set i=0
for /f "tokens=1 delims=|" %%a in (%CONFIG%) do (
    set /a i+=1
    echo !i! - %%a
)

echo.
set /p NUM=Digite o numero do projeto a excluir: 

set i=0
(
for /f "tokens=1* delims=|" %%a in (%CONFIG%) do (
    set /a i+=1
    if not "!i!"=="%NUM%" echo %%a^|%%b
)
) > config\temp.conf

move /y config\temp.conf %CONFIG% >nul

echo Projeto removido.
pause
exit /b 0