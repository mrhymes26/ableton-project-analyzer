# 🎵 Ableton Live Project Analyzer v1.0.0

**A powerful Python tool for analyzing Ableton Live projects and extracting all used VST plugins.**

Perfect for PC migration, project documentation, and VST inventory management.

---

## 🚀 Quick Start

### Windows (Easiest Method)
1. Download and extract the ZIP file
2. Install Python 3.6+ from [python.org](https://www.python.org/downloads/)
3. Double-click `run_analyzer.bat` and drag & drop your projects folder onto it

### Command Line
```bash
pip install pandas openpyxl
python ableton_project_analyzer.py "Z:\Path\to\Projects" --excel "output.xlsx"
```

---

## ✨ Key Features

- ✅ **Multi-Threading**: Processes hundreds of projects in parallel (up to 16 threads)
- ✅ **Excel Export**: 5 comprehensive sheets with detailed analysis
- ✅ **PC Migration Ready**: Special "VST Requirements for New PC" sheet
- ✅ **Batch Processing**: Analyzes entire directories recursively
- ✅ **Multiple Export Formats**: Excel, JSON, and TXT

---

## 📊 Excel Export Includes

1. **Project Overview** - All analyzed projects with details
2. **VST Overview** - Complete list of all used VST plugins
3. **Track Details** - Detailed track-VST mapping
4. **VST Requirements for New PC** ⭐ - Perfect for PC migration
5. **Statistics** - Overall statistics, VST frequency, manufacturer analysis

---

## 📖 Origin

This tool was created during a PC migration to help identify all VST plugins used across multiple Ableton Live projects. It simplifies the process of setting up a new computer by automatically generating a comprehensive list of required plugins and their usage statistics.

---

## 📋 System Requirements

- **Python**: 3.6 or higher
- **Dependencies**: pandas, openpyxl
- **Operating System**: Windows, macOS, Linux
- **Ableton Live**: 9.x and higher

---

## 📝 Usage Examples

### Basic Analysis
```bash
python ableton_project_analyzer.py "Z:\Path\to\Projects"
```

### With Excel Export
```bash
python ableton_project_analyzer.py "Z:\Path\to\Projects" --excel "analysis.xlsx"
```

### With Custom Output Directory
```bash
run_analyzer.bat "Z:\Path\to\Projects" "C:\Temp\out"
```

### Multi-Threading (Faster)
```bash
python ableton_project_analyzer.py "Z:\Path\to\Projects" --excel "output.xlsx" --workers 16
```

---

## 📦 What's Included

- `ableton_project_analyzer.py` - Main Python script
- `run_analyzer.bat` - Windows batch script for easy drag & drop
- `requirements.txt` - Python dependencies
- `README.md` - Full documentation
- `QUICK_START.md` - Quick start guide
- `CHANGELOG.md` - Version history
- `LICENSE` - MIT License

---

## 🆘 Need Help?

- Check `README.md` for full documentation
- See `QUICK_START.md` for step-by-step instructions
- Review `CHANGELOG.md` for version history

---

## ☕ Support

If you find this tool helpful, consider supporting its development:

<a href="https://buymeacoffee.com/mrhymes" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

**[☕ Buy Me a Coffee](https://buymeacoffee.com/mrhymes)**

---

## 📄 License

MIT License - Free to use for private and commercial purposes.

---

## 🎯 Use Cases

- **PC Migration**: Identify all VSTs needed for a new computer
- **Project Documentation**: Automatically document all projects
- **VST Inventory**: Create a complete list of all used plugins
- **Statistics**: Analyze VST usage patterns and manufacturer distribution

---

**Enjoy analyzing your Ableton Live projects!** 🎵

