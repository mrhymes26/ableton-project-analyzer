@echo off
REM Ableton Project Analyzer - Quick Start Script
REM Drag and drop a folder onto this file to analyze all .als files in it

setlocal enabledelayedexpansion

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python is not installed or not in PATH!
    echo Please install Python 3.6+ from https://www.python.org/downloads/
    echo Make sure to check "Add Python to PATH" during installation.
    pause
    exit /b 1
)

REM Check if dependencies are installed
python -c "import pandas, openpyxl" >nul 2>&1
if errorlevel 1 (
    echo [INFO] Installing required packages...
    pip install pandas openpyxl
    if errorlevel 1 (
        echo [ERROR] Failed to install packages!
        pause
        exit /b 1
    )
)

REM Check if folder was dropped
if "%~1"=="" (
    echo.
    echo ============================================================
    echo Ableton Project Analyzer - Quick Start
    echo ============================================================
    echo.
    echo EASIEST WAY TO USE:
    echo   1. Drag and drop a folder containing .als files onto this .bat file
    echo   2. Or provide the path as an argument:
    echo      run_analyzer.bat "Z:\Path\to\Projects"
    echo   3. Or specify output directory:
    echo      run_analyzer.bat "Z:\Path\to\Projects" "C:\Temp\out"
    echo.
    echo The tool will create an Excel file with all project and VST information.
    echo.
    pause
    exit /b 1
)

REM Get the folder path
set "PROJECT_PATH=%~1"

REM Remove quotes if present
set "PROJECT_PATH=!PROJECT_PATH:"=!"

REM Check if path exists
if not exist "!PROJECT_PATH!" (
    echo [ERROR] Path does not exist: !PROJECT_PATH!
    pause
    exit /b 1
)

REM Check if it's a folder (ends with backslash) or file
echo !PROJECT_PATH!| findstr /R "\\$" >nul
if errorlevel 1 (
    REM No trailing backslash - might be a file, check if it's a folder
    if exist "!PROJECT_PATH!\" (
        REM It's a folder, add backslash
        set "PROJECT_PATH=!PROJECT_PATH!\"
    ) else (
        REM It's a file, get parent folder
        for %%F in ("!PROJECT_PATH!") do set "PROJECT_PATH=%%~dpF"
    )
)

REM Remove trailing backslash for processing
set "PROJECT_PATH_CLEAN=!PROJECT_PATH!"
if "!PROJECT_PATH_CLEAN:~-1!"=="\" set "PROJECT_PATH_CLEAN=!PROJECT_PATH_CLEAN:~0,-1!"

REM Get output directory (second argument, optional)
set "OUTPUT_DIR="
if not "%~2"=="" (
    set "OUTPUT_DIR=%~2"
    set "OUTPUT_DIR=!OUTPUT_DIR:"=!"
    REM Remove trailing backslash if present
    if "!OUTPUT_DIR:~-1!"=="\" set "OUTPUT_DIR=!OUTPUT_DIR:~0,-1!"
    REM Create output directory if it doesn't exist
    if not exist "!OUTPUT_DIR!" (
        echo [INFO] Creating output directory: !OUTPUT_DIR!
        mkdir "!OUTPUT_DIR!" 2>nul
        if errorlevel 1 (
            echo [ERROR] Failed to create output directory: !OUTPUT_DIR!
            pause
            exit /b 1
        )
    )
)

REM Get script directory (where the .bat file is located)
set "SCRIPT_DIR=%~dp0"
REM Remove trailing backslash
if "!SCRIPT_DIR:~-1!"=="\" set "SCRIPT_DIR=!SCRIPT_DIR:~0,-1!"

REM Create output filename based on folder name
for %%F in ("!PROJECT_PATH_CLEAN!") do set "FOLDER_NAME=%%~nxF"

if not "!OUTPUT_DIR!"=="" (
    REM Convert to absolute path
    pushd "!OUTPUT_DIR!" >nul 2>&1
    if errorlevel 1 (
        echo [ERROR] Cannot access output directory: !OUTPUT_DIR!
        pause
        exit /b 1
    )
    set "OUTPUT_DIR_ABS=!CD!"
    popd >nul 2>&1
    set "OUTPUT_FILE=!OUTPUT_DIR_ABS!\!FOLDER_NAME!_VST_Analysis.xlsx"
) else (
    REM Use script directory (where .bat file is located)
    set "OUTPUT_FILE=!SCRIPT_DIR!\!FOLDER_NAME!_VST_Analysis.xlsx"
)

echo.
echo ============================================================
echo Ableton Project Analyzer
echo ============================================================
echo.
echo Analyzing projects in: !PROJECT_PATH_CLEAN!
echo Output file: !OUTPUT_FILE!
echo.

REM Run the analyzer
python ableton_project_analyzer.py "!PROJECT_PATH_CLEAN!" --excel "!OUTPUT_FILE!" --workers 8

if errorlevel 1 (
    echo.
    echo [ERROR] Analysis failed!
    pause
    exit /b 1
)

echo.
echo ============================================================
echo Analysis Complete!
echo ============================================================
echo.
echo Excel file created: !OUTPUT_FILE!
if not "!OUTPUT_DIR!"=="" (
    echo Location: !OUTPUT_DIR_ABS!
) else (
    echo Location: !SCRIPT_DIR!
)
echo.
echo You can now open the Excel file to see all your project and VST information.
echo.
pause
