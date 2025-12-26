# GATE/NET Exam Assistant - AI-Powered Study Companion

A specialized AI chatbot designed to help engineering students prepare for GATE (Graduate Aptitude Test in Engineering) and NET (National Eligibility Test) exams. Built with FastAPI backend and modern frontend, featuring real OpenAI integration for intelligent exam preparation assistance.

## 🎯 Features

- 🤖 **AI-Powered Responses**: Real OpenAI GPT integration for intelligent exam guidance
- 📚 **Subject-Specific Help**: Specialized assistance for CS, EC, EE, ME, CE, and more
- 📖 **Study Strategies**: Personalized study plans and time management tips
- 🧮 **Formula Repository**: Quick access to important formulas and equations
- 📝 **Problem-Solving**: Step-by-step explanations and techniques
- 🎨 **Modern UI**: Beautiful academic-themed interface with chat bubbles
- 📱 **Responsive Design**: Works perfectly on desktop and mobile devices
- ⚡ **Fast Performance**: Built with FastAPI for high-performance async operations

## 🎓 Supported Subjects

### GATE Subjects:
- **Computer Science (CS)**
- **Information Technology (IT)**
- **Electronics (EC)**
- **Electrical (EE)**
- **Mechanical (ME)**
- **Civil (CE)**
- **Chemical (CH)**
- **Biotechnology (BT)**
- **Mathematics (MA)**
- **Physics (PH)**

### NET Subjects:
- Computer Science, Electronics, Electrical, Mechanical
- Civil, Chemical, Biotechnology, Mathematics
- Physics, Chemistry

## 🚀 Quick Start

### Method 1: Using the Run Scripts (Recommended)

#### For Windows:
1. Navigate to the project directory:
   ```bash
   cd GATE_Ai_Assistant
   ```
2. Double-click `run.bat` or run from terminal:
   ```bash
   run.bat
   ```

#### For Linux/Mac:
1. Navigate to the project directory:
   ```bash
   cd GATE_Ai_Assistant
   ```
2. Make the script executable (first time only):
   ```bash
   chmod +x run.sh
   ```
3. Run the script:
   ```bash
   ./run.sh
   ```

The script will automatically:
- Check if Python is installed
- Install dependencies if needed
- Start the server on `http://localhost:8000`

### Method 2: Manual Terminal Setup

#### 1. Install Dependencies

Open your terminal/command prompt and navigate to the project directory:

```bash
cd GATE_Ai_Assistant
```

Then install the required packages:

```bash
# Windows (Command Prompt or PowerShell)
pip install -r requirements.txt

# Linux/Mac
pip3 install -r requirements.txt
# OR
python3 -m pip install -r requirements.txt
```

#### 2. Set Up OpenAI API Key (Optional)

For full AI functionality, set up your OpenAI API key:

1. Get an API key from [OpenAI Platform](https://platform.openai.com/api-keys)
2. Set environment variable:

   **Windows (Command Prompt):**
   ```bash
   set OPENAI_API_KEY=your-openai-api-key-here
   ```

   **Windows (PowerShell):**
   ```powershell
   $env:OPENAI_API_KEY="your-openai-api-key-here"
   ```

   **Linux/Mac:**
   ```bash
   export OPENAI_API_KEY=your-openai-api-key-here
   ```

   **For permanent setup (Windows):**
   - Go to System Properties → Environment Variables
   - Add `OPENAI_API_KEY` as a new user variable

   **For permanent setup (Linux/Mac):**
   ```bash
   echo 'export OPENAI_API_KEY="your-openai-api-key-here"' >> ~/.bashrc
   source ~/.bashrc
   ```

**Note**: The app works without API keys using comprehensive mock responses for demo purposes.

#### 3. Run the Application

**Windows:**
```bash
# Option 1: Using Python directly
python main.py

# Option 2: Using uvicorn directly
uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

**Linux/Mac:**
```bash
# Option 1: Using Python directly
python3 main.py

# Option 2: Using uvicorn directly
uvicorn main:app --reload --host 0.0.0.0 --port 8000
# OR
python3 -m uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

#### 4. Open in Browser

Once the server is running, you'll see:
```
INFO:     Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit)
```

Open your browser and navigate to:
- `http://localhost:8000` or
- `http://127.0.0.1:8000`

### Stopping the Server

To stop the server, press `Ctrl+C` in the terminal where it's running.

## 💬 How to Use

### Ask About Specific Subjects:
- "Help me with Computer Science topics"
- "What are important formulas for Electronics?"
- "Explain thermodynamics concepts"
- "Mechanical engineering study tips"

### Get Study Guidance:
- "Give me study strategy for GATE"
- "How to prepare for NET exam?"
- "Time management tips"
- "Mock test preparation"

### Request Formulas:
- "Important formulas for Electrical Engineering"
- "Computer Science formulas"
- "Mechanical engineering equations"

### General Help:
- "Hello" or "Hi" for welcome message
- "Help" for general guidance
- "Strategy" for study plans

## 🧠 AI Capabilities

### With OpenAI API (Recommended):
- **Intelligent Responses**: Context-aware, detailed explanations
- **Subject Expertise**: Deep knowledge of engineering concepts
- **Personalized Guidance**: Tailored study advice
- **Problem Solving**: Step-by-step solutions
- **Formula Explanations**: Detailed formula breakdowns

### Without API (Demo Mode):
- **Comprehensive Mock Responses**: Pre-built responses for all major subjects
- **Subject-Specific Content**: Detailed guidance for each engineering branch
- **Study Strategies**: Proven preparation techniques
- **Formula Collections**: Important equations by subject

## 📁 Project Structure

```
GATE_Ai_Assistant/
├── main.py              # FastAPI backend with OpenAI integration
├── requirements.txt     # Python dependencies
├── README.md           # This documentation
├── run.bat             # Windows run script (double-click to start)
├── run.sh              # Linux/Mac run script
└── static/             # Frontend files
    ├── index.html      # GATE/NET exam interface
    ├── style.css       # Academic-themed styling
    └── script.js       # Chat functionality
```

## 🎮 Running the Application

### Quick Start Options:

1. **Windows Users**: Simply double-click `run.bat` in the `GATE_Ai_Assistant` folder
2. **Linux/Mac Users**: Run `./run.sh` from the terminal after making it executable
3. **Manual Setup**: Follow the detailed terminal instructions in the Quick Start section above

### What the Run Scripts Do:

- ✅ Check if Python is installed
- ✅ Verify project files exist
- ✅ Automatically install dependencies if needed
- ✅ Start the FastAPI server
- ✅ Display server URL and instructions

## 🔧 API Endpoints

- `GET /` - Main exam assistant interface
- `POST /api/chat` - Send message and get AI response
- `GET /api/health` - Health check endpoint

## 🎨 UI Features

### Academic Theme:
- **Professional Design**: Academic blue color scheme
- **Graduation Cap Icon**: Education-focused branding
- **Chat Bubbles**: Clear distinction between user and assistant
- **Typing Indicators**: Visual feedback during AI processing
- **Responsive Layout**: Mobile-friendly design

### User Experience:
- **Auto-scroll**: Automatically scrolls to latest messages
- **Keyboard Shortcuts**: Enter to send, Ctrl+Enter for quick send
- **Loading States**: Visual feedback during API calls
- **Error Handling**: Graceful fallback for API issues

## 📚 Study Resources Integration

The assistant provides guidance on:
- **Previous Year Papers**: Analysis and important questions
- **Standard Textbooks**: Recommended reading materials
- **Online Resources**: Mock tests and practice materials
- **Video Lectures**: Learning resource recommendations
- **Study Schedules**: Time management and planning

## 🔧 Customization

### Adding New Subjects:
1. Update `GATE_SUBJECTS` and `NET_SUBJECTS` lists in `main.py`
2. Add subject-specific responses in `get_mock_gate_response()`
3. Update the system prompt for OpenAI API

### Styling Changes:
- Modify `static/style.css` for visual changes
- Update color schemes, fonts, or layout
- Add new animations or effects

### AI Integration:
- The OpenAI integration is already configured
- Just set your `OPENAI_API_KEY` environment variable
- The system automatically falls back to mock responses if API is unavailable

## 🚨 Troubleshooting

### Common Issues:

1. **OpenAI API Not Working**
   - Check if API key is set correctly
   - Verify internet connection
   - App automatically uses mock responses as fallback

2. **Port Already in Use**
   ```bash
   uvicorn main:app --reload --port 8001
   ```

3. **Module Not Found**
   ```bash
   pip install -r requirements.txt
   ```

4. **Frontend Not Loading**
   - Ensure the `static` folder exists
   - Check that all files are in the correct locations
   - Verify the server is running on the correct port

## 🎯 Exam Preparation Tips

### 3-Month Study Plan:
- **Month 1**: Foundation building and core concepts
- **Month 2**: Advanced topics and previous year questions
- **Month 3**: Mock tests and final revision

### Daily Study Routine:
- 2-3 hours of focused study
- Weekend mock tests
- Regular revision sessions

### Success Factors:
- **Consistency**: Daily study over cramming
- **Practice**: Regular problem-solving
- **Mock Tests**: Time management practice
- **Weak Areas**: Focus on improving weak subjects

## 📞 Support

For issues or questions:
- Check the troubleshooting section above
- Ensure all dependencies are installed
- Verify API key configuration
- Test with mock responses first

## 🎓 Success Stories

This assistant is designed to help students:
- **Understand Complex Concepts**: Clear explanations and examples
- **Master Important Formulas**: Quick access to key equations
- **Develop Study Strategies**: Personalized preparation plans
- **Improve Time Management**: Efficient exam preparation
- **Build Confidence**: Encouraging and motivational responses

---

**Ready to ace your GATE/NET exam? Start chatting with your AI study companion! 🎯📚✨**
