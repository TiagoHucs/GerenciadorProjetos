@echo off
set CONFIG=config\projetos.conf

:MENU
cls
echo ============================
echo GERENCIAR PROJETOS
echo ============================
echo.

echo 1 - Cadastrar projeto
echo 2 - Listar projeto
echo 3 - Excluir projeto
echo 0 - Voltar
echo.

set /p op=Escolha: 

if "%op%"=="1" call sub-rotinas\cadastrar-projeto.bat
if "%op%"=="2" call sub-rotinas\listar-projetos.bat
if "%op%"=="3" call sub-rotinas\excluir-projeto.bat
if "%op%"=="0" exit /b 0

goto MENU




