@echo off
title Linux-like Terminal

:prompt
echo.
set /p input="%username%@%computername%:F:\hack and other\HijackPack%$ "

rem Check for built-in commands
if "%input%"=="exit" (
    exit /b 0
) else if "%input%"=="clear" (
    cls
) else if "%input%"=="pwd" (
    echo %cd%
) else if "%input%"=="ls" (
    dir
) else if "%input%"=="mkdir" (
    set /p dirname="Enter directory name: "
    mkdir %dirname%
) else if "%input%"=="rmdir" (
    set /p dirname="Enter directory name: "
    rmdir /s /q %dirname%
) else if "%input%"=="cd" (
    set /p newdir="Enter directory path: "
    cd %newdir%
) else if "%input%"=="cat" (
    set /p filename="Enter filename: "
    type %filename%
) else if "%input%"=="rm" (
    set /p filename="Enter filename: "
    del /q %filename%
) else if "%input%"=="mv" (
    set /p source="Enter source file/directory: "
    set /p destination="Enter destination: "
    move /y %source% %destination%
) else if "%input%"=="cp" (
    set /p source="Enter source file/directory: "
    set /p destination="Enter destination: "
    copy /y %source% %destination%
) else (
    rem Execute non-built-in commands
    %input%
)

goto prompt
