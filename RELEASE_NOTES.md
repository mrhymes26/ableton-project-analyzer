# Release Notes - Version 1.0.0

**Date:** 2026-01-03  
**Status:** ✅ Production Ready

---

## 🎉 Welcome to Ableton Live Project Analyzer v1.0.0

This is the first stable version of the Ableton Live Project Analyzer - a powerful tool for analyzing Ableton Live projects and extracting all used VST plugins.

## 📖 Origin

This tool was created during a PC migration to help identify all VST plugins used across multiple Ableton Live projects. It was developed to simplify the process of setting up a new computer by automatically generating a comprehensive list of required plugins and their usage statistics.

---

## ✨ Key Features

### 🚀 Performance-Optimized
- **Multi-Threading**: Processes hundreds of projects in parallel
- **Batch Analysis**: Analyzes entire directories recursively
- **Optimized Extraction**: Fast XML extraction for all .als formats

### 📊 Comprehensive Excel Reports
Creates detailed Excel files with **5 sheets**:

1. **Project Overview**
   - All analyzed projects
   - Path, Tracks, Scenes, VSTs
   - Main directory grouping

2. **VST Overview**
   - All used VST plugins
   - Manufacturer, Name, Filename, Version
   - Project assignment

3. **Track Details**
   - Detailed track-VST mapping
   - Which VSTs are used on which tracks

4. **VST Requirements for New PC** ⭐
   - Unique feature!
   - Creates list of all required VSTs
   - Sorted by frequency
   - Perfect for PC migration

5. **Statistics**
   - Overall statistics (Projects, Tracks, Scenes, VSTs)
   - VST frequency (which VSTs are used most frequently)
   - Manufacturer statistics

### 📁 Flexible Export Options
- **Excel**: Detailed analysis with 5 sheets
- **JSON**: Complete project data for further processing
- **TXT**: Recursive VST lists organized by directories

### 🎯 Easy to Use
```bash
# Simple analysis
python ableton_project_analyzer.py "Path\to\Projects"

# With Excel export
python ableton_project_analyzer.py "Path\to\Projects" --excel output.xlsx

# With multi-threading (16 threads)
python ableton_project_analyzer.py "Path\to\Projects" --excel output.xlsx --workers 16
```

---

## 📋 System Requirements

- **Python**: 3.6 or higher
- **Operating System**: Windows, macOS, Linux
- **Dependencies**: pandas, openpyxl

---

## 🚀 Installation

```bash
# 1. Clone repository or download
git clone <repository-url>
cd ableton-project-analyzer

# 2. Install dependencies
pip install -r requirements.txt

# 3. Ready to use!
python ableton_project_analyzer.py --help
```

---

## 📖 Usage

### Basic Usage
```bash
python ableton_project_analyzer.py "Z:\Path\to\Ableton\Projects"
```

### With Excel Export
```bash
python ableton_project_analyzer.py "Z:\Path\to\Projects" --excel "C:\Temp\analysis.xlsx"
```

### With JSON Export
```bash
python ableton_project_analyzer.py "Z:\Path\to\Projects" --json "output.json"
```

### With VST Lists Export
```bash
python ableton_project_analyzer.py "Z:\Path\to\Projects" --txt --recursive
```

### All Options
```bash
python ableton_project_analyzer.py "Path" \
  --excel "output.xlsx" \
  --json "output.json" \
  --txt --recursive \
  --workers 16 \
  --quiet
```

---

## 🎯 Use Cases

### 1. Create VST Inventory
Analyze all your projects and create a complete list of all used VSTs.

### 2. Prepare PC Migration ⭐
**This was the original use case that led to the development of this tool.** Use the "VST Requirements for New PC" sheet to see which VSTs you need to install on a new computer. This feature was specifically created for PC migration scenarios to simplify the process of setting up a new computer.

### 3. Project Documentation
Automatically create documentation for all your projects.

### 4. VST Statistics
See which VSTs you use most frequently and which manufacturers dominate.

---

## 🔧 Technical Details

### Performance
- **Multi-Threading**: Up to 16 parallel threads (configurable)
- **Batch Processing**: Optimized processing of large datasets
- **Fast Extraction**: Optimized XML parsing methods

### Supported Formats
- ✅ .als (ZIP format) - New Ableton versions
- ✅ .als (GZIP format) - Older Ableton versions
- ✅ .als (XML format) - Very old Ableton versions

### Error Handling
- Robust handling of corrupted project files
- Detailed error messages
- Progress display during analysis

---

## 📝 Known Limitations

- Very large project collections (>1000 projects) may take several minutes
- Requires sufficient RAM for large analyses
- Excel files can become large with many projects

---

## 🐛 Troubleshooting

### "ModuleNotFoundError: No module named 'pandas'"
```bash
pip install -r requirements.txt
```

### "No Ableton projects found!"
- Check the path
- Make sure .als files are present in the directory
- Use absolute paths

### Performance Issues
- Reduce the number of threads: `--workers 4`
- Use `--quiet` for less output

---

## 📄 License

MIT License - Free to use for private and commercial purposes.

---

## 🙏 Acknowledgments

Thank you for using the Ableton Live Project Analyzer!

If you have questions or problems, please create an issue in the repository.

---

**Good luck with your projects!** 🎵
