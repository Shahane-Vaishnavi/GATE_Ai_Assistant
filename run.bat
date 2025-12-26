@echo off
echo ========================================
echo  GATE/NET Exam Assistant - Starting...
echo ========================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python is not installed or not in PATH!
    echo Please install Python 3.8 or higher from https://www.python.org/
    pause
    exit /b 1
)

echo [INFO] Python found!
echo.

REM Check if we're in the right directory
if not exist "main.py" (
    echo [ERROR] main.py not found!
    echo Please run this script from the GATE_Ai_Assistant directory.
    pause
    exit /b 1
)

REM Check if static directory exists
if not exist "static" (
    echo [ERROR] static directory not found!
    pause
    exit /b 1
)

REM Check if requirements are installed
echo [INFO] Checking dependencies...
python -c "import fastapi, uvicorn" >nul 2>&1
if errorlevel 1 (
    echo [INFO] Installing dependencies...
    pip install -r requirements.txt
    if errorlevel 1 (
        echo [ERROR] Failed to install dependencies!
        pause
        exit /b 1
    )
    echo [INFO] Dependencies installed successfully!
) else (
    echo [INFO] Dependencies are already installed!
)
echo.

REM Display server info
echo ========================================
echo  Server will start on http://localhost:8000
echo  Press Ctrl+C to stop the server
echo ========================================
echo.

REM Wait 2 seconds
timeout /t 2 /nobreak >nul

REM Start the server
echo [INFO] Starting server...
python main.py

pause

