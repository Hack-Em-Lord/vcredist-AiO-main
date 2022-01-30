@echo off
title "Microsoft Visual C++ Redistributable All-in-One - Hack'Em Lord
mode 70, 30
::========================================================================================================================================
::Trinh Tuan Kiet
::Auto Change Permissions
chcp 65001 >nul
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo  You Need Run This Tool By 'Run as Administrator'
    goto goUAC 
) else (
 goto goADMIN )

:goUAC
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:goADMIN
    pushd "%CD%"
    CD /D "%~dp0"
::========================================================================================================================================
::Call Language
call :Language
::========================================================================================================================================
::Setup
:setup
set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

cd bin
echo %_001_% & echo. & echo %_003_%
start /wait vcredist_x86_2005.exe /q
echo.

echo %_001_% & echo. & echo %_005_%
start /wait vcredist_x86_2008.exe /qb
echo.

echo %_001_% & echo. & echo %_007_%
start /wait vcredist_x86_2010.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_009_%
start /wait vcredist_x86_2012.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_011_%
start /wait vcredist_x86_2013.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_013_%
start /wait VC_redist.x86_2015-2022.exe /passive /norestart

goto about

:X64
cd bin
echo %_001_% & echo. & echo %_003_%
start /wait vcredist_x86_2005.exe /q
echo.

echo %_001_% & echo. & echo %_004_%
start /wait vcredist_x64_2005.exe /q
echo.

echo %_001_% & echo. & echo %_005_%
start /wait vcredist_x86_2008.exe /qb
echo.

echo %_001_% & echo. & echo %_006_%
start /wait vcredist_x64_2008.exe /qb
echo.

echo %_001_% & echo. & echo %_007_%
start /wait vcredist_x86_2010.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_008_%
start /wait vcredist_x64_2010.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_009_%
start /wait vcredist_x86_2012.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_010_%
start /wait vcredist_x64_2012.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_011_%
start /wait vcredist_x86_2013.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_012_%
start /wait vcredist_x64_2013.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_013_%
start /wait VC_redist.x86_2015-2022.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_014_%
start /wait VC_redist.x64_2015-2022.exe /passive /norestart

goto about

::========================================================================================================================================
::Variables
:about 
echo Thanks For Using Our Tool !!!
echo.
start https://discord.gg/pZhZDu9Anw
start https://github.com/Hack-Em-Lord
exit


:Language
	cls & echo. & echo      ------------------------------------------------- & echo.
	echo       Microsoft Visual C++ Redistributable All-in-One
	echo.
	echo      -------------------------------------------------
	echo. & echo Select a Language?
	echo. & echo  [1]: English & echo  [2]: Vietnamese & echo.
		set Lang=
		set /P Lang= Select [ ? ] = 
		IF %lang%==1 goto :English
		IF %lang%==2 goto :Vietnamese
		if not errorlevel 1 goto :Language

:English

::
set _001_=-------------------------------------------------
set _002_=Installing packages...
set _003_=Installing Microsoft Visual C++_2005_x86...
set _004_=Installing Microsoft Visual C++_2005_x64...
set _005_=Installing Microsoft Visual C++_2008_x86...
set _006_=Installing Microsoft Visual C++_2008_x64...
set _007_=Installing Microsoft Visual C++_2010_x86...
set _008_=Installing Microsoft Visual C++_2010_x64...
set _009_=Installing Microsoft Visual C++_2012_x86...
set _010_=Installing Microsoft Visual C++_2012_x64...
set _011_=Installing Microsoft Visual C++_2013_x86...
set _012_=Installing Microsoft Visual C++_2013_x64...
set _013_=Installing Microsoft Visual C++_2015-2022_x86...
set _014_=Installing Microsoft Visual C++_2015-2022_x64...
set _015_=Installation completed successfully.
set _016_=Thank you for using this script.
set _017_=Press any key to exit...

goto setup

:Vietnamese

::
set _001_=-------------------------------------------------
set _002_=Dang cai dat...
set _003_=Dang cai dat Microsoft Visual C++_2005_x86...
set _004_=Dang cai dat Microsoft Visual C++_2005_x64...
set _005_=Dang cai dat Microsoft Visual C++_2008_x86...
set _006_=Dang cai dat Microsoft Visual C++_2008_x64...
set _007_=Dang cai dat Microsoft Visual C++_2010_x86...
set _008_=Dang cai dat Microsoft Visual C++_2010_x64...
set _009_=Dang cai dat Microsoft Visual C++_2012_x86...
set _010_=Dang cai dat Microsoft Visual C++_2012_x64...
set _011_=Dang cai dat Microsoft Visual C++_2013_x86...
set _012_=Dang cai dat Microsoft Visual C++_2013_x64...
set _013_=Dang cai dat Microsoft Visual C++_2015-2022_x86...
set _014_=Dang cai dat Microsoft Visual C++_2015-2022_x64...
set _015_=Cai dat thanh cong.
set _016_=Cam on ban da su dung bo cai All-in-One.
set _017_=Nhan phim bat ki de thoat...

goto setup