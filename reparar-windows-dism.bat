@echo off
:: ==============================
:: VERIFICAR ADMIN
:: ==============================
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Solicitando privilegios de administrador...
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "cmd.exe", "/c %~s0", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"
	
@echo off
:: Verifica se o script está rodando como Administrador
net session >nul 2>&1
if %errorLevel% == 0 (
    echo [OK] Executando com privilegios de Administrador.
) else (
    echo [ERRO] Por favor, clique com o botao direito e selecione "Executar como Administrador".
    pause
    exit /b
)

echo.
echo ===================================================
echo   INICIANDO REPARACAO DO SISTEMA (DISM E SFC)
echo ===================================================
echo.

echo [1/5] Verificacao rapida de corrupcao...
dism /online /cleanup-image /checkhealth
pause
echo.
echo [2/5] Analise completa...
dism /online /cleanup-image /scanhealth
pause
echo.
echo [3/5] Reparacao da imagem...
dism /online /cleanup-image /restorehealth
pause
echo.
echo [4/5] Limpeza de componentes (WinSxS)...
dism /online /cleanup-image /startcomponentcleanup
pause
echo.
echo [5/5] Verificacao final com SFC...
sfc /scannow

echo.
echo ==========================================
echo  PROCESSO CONCLUIDO
echo ==========================================
pause