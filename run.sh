#!/bin/bash

echo "========================================"
echo " GATE/NET Exam Assistant - Starting..."
echo "========================================"
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null && ! command -v python &> /dev/null; then
    echo "[ERROR] Python is not installed!"
    echo "Please install Python 3.8 or higher"
    exit 1
fi

# Use python3 if available, otherwise use python
PYTHON_CMD="python3"
if ! command -v python3 &> /dev/null; then
    PYTHON_CMD="python"
fi

echo "[INFO] Python found!"
echo ""

# Check if we're in the right directory
if [ ! -f "main.py" ]; then
    echo "[ERROR] main.py not found!"
    echo "Please run this script from the GATE_Ai_Assistant directory."
    exit 1
fi

# Check if static directory exists
if [ ! -d "static" ]; then
    echo "[ERROR] static directory not found!"
    exit 1
fi

# Check if requirements are installed
echo "[INFO] Checking dependencies..."
if ! $PYTHON_CMD -c "import fastapi, uvicorn" 2>/dev/null; then
    echo "[INFO] Installing dependencies..."
    pip install -r requirements.txt
    if [ $? -ne 0 ]; then
        echo "[ERROR] Failed to install dependencies!"
        exit 1
    fi
    echo "[INFO] Dependencies installed successfully!"
else
    echo "[INFO] Dependencies are already installed!"
fi
echo ""

# Display server info
echo "========================================"
echo " Server will start on http://localhost:8000"
echo " Press Ctrl+C to stop the server"
echo "========================================"
echo ""

# Wait 2 seconds
sleep 2

# Start the server
echo "[INFO] Starting server..."
$PYTHON_CMD main.py

