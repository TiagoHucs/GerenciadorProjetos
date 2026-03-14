@echo off
set CONFIG=config\projetos.conf

echo.
set /p NOME=Nome do projeto: 
set /p CAMINHO=Caminho da pasta raiz: 

if not exist config mkdir config

if exist %CONFIG% echo.>>%CONFIG%

echo %NOME%^|%CAMINHO%>>%CONFIG%

echo Projeto cadastrado com sucesso.
echo.

pause
exit /b 0