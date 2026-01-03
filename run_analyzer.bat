@echo off
REM Ableton Project Analyzer - Quick Start Script
REM Drag and drop a folder onto this file to analyze all .als files in it

setlocal

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
    echo.
    echo The tool will create an Excel file with all project and VST information.
    echo.
    pause
    exit /b 1
)

REM Get the folder path
set "PROJECT_PATH=%~1"

REM Create output filename based on folder name
for %%F in ("%PROJECT_PATH%") do set "FOLDER_NAME=%%~nxF"
set "OUTPUT_FILE=%FOLDER_NAME%_VST_Analysis.xlsx"

echo.
echo ============================================================
echo Ableton Project Analyzer
echo ============================================================
echo.
echo Analyzing projects in: %PROJECT_PATH%
echo Output file: %OUTPUT_FILE%
echo.

REM Run the analyzer
python ableton_project_analyzer.py "%PROJECT_PATH%" --excel "%OUTPUT_FILE%" --workers 8

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
echo Excel file created: %OUTPUT_FILE%
echo Location: %CD%
echo.
echo You can now open the Excel file to see all your project and VST information.
echo.
pause
