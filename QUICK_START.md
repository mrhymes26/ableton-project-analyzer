# Quick Start Guide

## 🚀 Easiest Way to Use

### Option 1: Drag & Drop (Windows) - **EASIEST!**

1. **Install Python** (if not already installed)
   - Download from: https://www.python.org/downloads/
   - ✅ **Important:** Check "Add Python to PATH" during installation

2. **Install dependencies** (one time only)
   ```bash
   pip install pandas openpyxl
   ```

3. **Use the tool:**
   - Open Windows Explorer
   - Navigate to your Ableton projects folder
   - **Drag and drop** a folder containing .als files onto `run_analyzer.bat`
   - The tool will analyze all projects and create an Excel file

### Option 2: Command Line (All Platforms)

1. **Install dependencies:**
   ```bash
   pip install pandas openpyxl
   ```

2. **Run the tool:**
   ```bash
   python ableton_project_analyzer.py "Z:\Path\to\Your\Projects" --excel "output.xlsx"
   ```

That's it! The Excel file will be created in the current directory.

---

## 📝 Step-by-Step Example

### Windows Example:

```bash
# 1. Open Command Prompt or PowerShell
# 2. Navigate to the tool directory
cd "Z:\04_Projekte\Engineering\Vibe Coding\Final Release\ableton_max4live_plugin\ableton-project-analyzer-release"

# 3. Install dependencies (first time only)
pip install pandas openpyxl

# 4. Run analysis
python ableton_project_analyzer.py "Z:\04_Projekte\Musikproduktion\CAMPFIRE\Studio\_Resources\_Ideas Bin" --excel "C:\Temp\analysis.xlsx"
```

### Result:
- Excel file created: `C:\Temp\analysis.xlsx`
- Contains 5 sheets with all project and VST information

---

## 💡 Tips

- **First time?** Just install dependencies once: `pip install pandas openpyxl`
- **Want Excel?** Always use `--excel "filename.xlsx"`
- **Many projects?** Use `--workers 16` for faster processing
- **Quiet mode?** Use `--quiet` to reduce console output

---

**That's the easiest way!** 🎵

