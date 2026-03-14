set CONFIG=config\projetos.conf
echo.

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

pause
exit /b 0