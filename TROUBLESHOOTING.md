# Troubleshooting Guide - GATE Assistant Server

## Common Issues and Solutions

### Issue 1: "ERR_CONNECTION_REFUSED" or "localhost refused to connect"

**Symptoms:**
- Browser shows "This site can't be reached"
- Error code: `ERR_CONNECTION_REFUSED`
- Server appears to start but browser can't connect

**Solutions (in order):**

#### Solution 1: Check if Server is Running
1. Open Command Prompt or PowerShell
2. Navigate to the `GATE_Ai_Assistant` directory
3. Run: `python main.py` or use `run.bat` (Windows) / `run.sh` (Linux/Mac)
4. Look for the message: "Server running on: http://127.0.0.1:8000"
5. If you see errors, note them down

#### Solution 2: Check if Port 8000 is Already in Use
1. **Windows:**
   ```powershell
   netstat -ano | findstr :8000
   ```
   If you see output, note the PID (last column)
   Then kill it:
   ```powershell
   taskkill /PID <PID_NUMBER> /F
   ```

2. **Linux/Mac:**
   ```bash
   lsof -i :8000
   ```
   If you see output, kill the process:
   ```bash
   kill -9 <PID>
   ```

#### Solution 3: Try a Different Port
1. Edit `main.py`
2. Find the line: `PORT = 8000`
3. Change it to: `PORT = 8001` (or any other available port)
4. Save and restart the server
5. Access at: `http://localhost:8001`

#### Solution 4: Check Windows Firewall
1. Open Windows Security → Firewall & network protection
2. Click "Allow an app through firewall"
3. Find Python or add it manually
4. Make sure both "Private" and "Public" are checked
5. Or temporarily disable firewall to test

#### Solution 5: Use 127.0.0.1 Instead of localhost
- Try accessing: `http://127.0.0.1:8000` instead of `http://localhost:8000`
- Sometimes localhost DNS resolution can be slow

### Issue 2: Server Takes Very Long to Respond

**Symptoms:**
- Server starts but browser takes forever to load
- Using `0.0.0.0` as host binding

**Solution:**
- The server is now configured to use `127.0.0.1` instead of `0.0.0.0`
- This provides faster localhost access on Windows
- If you need network access, you can change back to `0.0.0.0` but it may be slower

### Issue 3: "Module not found" Errors

**Symptoms:**
- Error: `ModuleNotFoundError: No module named 'fastapi'`
- Or similar errors for other modules

**Solution:**
1. Make sure you're in the `GATE_Ai_Assistant` directory
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. If using virtual environment, activate it first:
   ```bash
   # Create virtual environment
   python -m venv venv
   
   # Activate (Windows)
   venv\Scripts\activate
   
   # Activate (Linux/Mac)
   source venv/bin/activate
   
   # Then install
   pip install -r requirements.txt
   ```

### Issue 4: Python Not Found

**Symptoms:**
- Error: `'python' is not recognized as an internal or external command`

**Solution:**
1. Install Python 3.8 or higher from https://www.python.org/
2. During installation, check "Add Python to PATH"
3. Restart your terminal/command prompt
4. Verify: `python --version`

### Issue 5: Server Starts But Shows Errors

**Check the terminal output for:**
- Port already in use → Use Solution 2 above
- Missing files → Make sure `static/index.html` exists
- Permission errors → Run as administrator (Windows) or use `sudo` (Linux/Mac)

## Quick Diagnostic Steps

1. **Check Server Status:**
   ```bash
   # Windows
   netstat -ano | findstr :8000
   
   # Linux/Mac
   lsof -i :8000
   ```

2. **Test Server Manually:**
   ```bash
   python main.py
   ```
   Look for: "Server running on: http://127.0.0.1:8000"

3. **Test Connection:**
   - Open browser
   - Go to: `http://127.0.0.1:8000`
   - Or: `http://localhost:8000`

4. **Check Health Endpoint:**
   - Go to: `http://127.0.0.1:8000/api/health`
   - Should return: `{"status":"healthy","message":"GATE/NET Exam Assistant is running"}`

## Manual Server Start (If Scripts Don't Work)

1. Open terminal/command prompt
2. Navigate to project directory:
   ```bash
   cd "D:\Programming\Projects\GATE Assistant\GATE_Ai_Assistant"
   ```
3. Install dependencies (if not done):
   ```bash
   pip install -r requirements.txt
   ```
4. Start server:
   ```bash
   python main.py
   ```
5. Open browser and go to: `http://127.0.0.1:8000`

## Still Not Working?

1. Check Python version: `python --version` (should be 3.8+)
2. Check if all files are present:
   - `main.py`
   - `static/index.html`
   - `static/script.js`
   - `static/style.css`
   - `requirements.txt`
3. Try running with verbose logging:
   - Edit `main.py`, change `log_level="info"` to `log_level="debug"`
4. Check Windows Event Viewer for system errors
5. Try running as Administrator

## Contact/Support

If none of these solutions work, check:
- Python version compatibility
- System firewall settings
- Antivirus software blocking the connection
- Network proxy settings

