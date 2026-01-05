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
- **Multi-Threading**: Processes hundreds of projects in parallel (up to 16 threads, configurable)
- **Batch Processing**: Optimized batch processing for better performance
- **Batch Analysis**: Analyzes entire directories recursively
- **Optimized Extraction**: Fast XML extraction for all .als formats
- **Thread-Safe**: Safe concurrent processing with proper locking mechanisms
- **Progress Tracking**: Real-time progress updates during analysis

### 📊 Comprehensive Excel Reports
Creates detailed Excel files with **5 sheets**:

1. **Project Overview**
   - All analyzed projects with complete paths
   - Track count, Scene count, VST count per project
   - Main directory grouping for better organization
   - Color-coded headers for easy navigation

2. **VST Overview**
   - Complete list of all used VST plugins
   - Manufacturer, Plugin Name, Filename, Version
   - Project assignment (which project uses which VST)
   - Detailed plugin information extraction

3. **Track Details** ⭐
   - Detailed track-VST mapping
   - Track types: Audio, MIDI, Return, Master
   - Which VSTs are used on which tracks
   - Track names and VST assignments
   - VST count per track

4. **VST Requirements for New PC** ⭐
   - Unique feature for PC migration!
   - Creates comprehensive list of all required VSTs
   - Sorted by usage frequency (most used first)
   - Shows usage count and project assignments
   - Perfect for setting up a new computer
   - Includes manufacturer, filename, and version information

5. **Statistics**
   - Overall statistics (Total Projects, Different VSTs, Total Tracks)
   - Average VSTs per project
   - Average tracks per project
   - VST frequency analysis (which VSTs are used most frequently)
   - Manufacturer statistics with usage counts

### 📁 Flexible Export Options
- **Excel** (.xlsx): Detailed analysis with 5 comprehensive sheets
  - Color-coded headers for easy navigation
  - Auto-sized columns for optimal readability
  - Professional formatting with statistics
  
- **JSON**: Complete project data for further processing
  - Includes timestamp and metadata
  - All project details, tracks, and VST information
  - Machine-readable format for automation
  
- **TXT**: Recursive VST lists organized by directories
  - Individual VST list files per project
  - Organized by main directories
  - Includes track details with VST assignments
  - Summary files: Inventory Summary and VST Requirements
  - Perfect for documentation and sharing

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

### Advanced Features
- **Track Details Extraction**: Automatically extracts track types (Audio, MIDI, Return, Master) and their VST assignments
- **VST Metadata**: Extracts manufacturer, plugin name, filename, and version information
- **Main Directory Grouping**: Organizes projects by main directories for better structure
- **Recursive VST Lists**: Creates detailed VST lists with track information, organized by directories
- **VST Requirements List**: Generates comprehensive requirements list sorted by frequency
- **Inventory Summary**: Creates complete inventory summary with statistics

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
- **Multi-Threading**: Up to 16 parallel threads (configurable via `--workers`)
- **Batch Processing**: Optimized batch processing of large datasets
- **Fast Extraction**: Optimized XML parsing methods with header detection
- **Thread-Safe Implementation**: Safe concurrent access with proper locking
- **Progress Updates**: Real-time progress tracking (configurable frequency)
- **Memory Efficient**: Optimized memory usage for large project collections

### Supported Formats
- ✅ .als (ZIP format) - New Ableton versions (Live 10+)
- ✅ .als (GZIP format) - Older Ableton versions (Live 9.x)
- ✅ .als (XML format) - Very old Ableton versions (Live 8 and earlier)
- ✅ Automatic format detection - No manual configuration needed

### Error Handling
- Robust handling of corrupted project files
- Graceful error recovery - continues processing even if individual projects fail
- Silent error handling for better performance
- Detailed error messages when needed
- Progress display during analysis
- Thread-safe error handling

---

## 📝 Known Limitations

- Very large project collections (>1000 projects) may take several minutes
- Requires sufficient RAM for large analyses (recommended: 4GB+ for 500+ projects)
- Excel files can become large with many projects (use JSON export for very large datasets)
- Network paths (SMB) must be mounted before analysis (macOS/Linux)
- Corrupted project files are skipped automatically (no manual intervention needed)

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
- Reduce the number of threads: `--workers 4` (default is 16)
- Use `--quiet` for less output during analysis
- For very large collections, consider processing in smaller batches

### Network/SMB Path Issues (macOS/Linux)
- Mount network drives first using Finder or command line
- Use mounted paths (e.g., `/Volumes/mountname/path`) instead of SMB URLs
- Ensure proper read permissions on network shares

---

## 📄 License

MIT License - Free to use for private and commercial purposes.

---

## 🙏 Acknowledgments

Thank you for using the Ableton Live Project Analyzer!

If you have questions or problems, please create an issue in the repository.

---

## ☕ Support

If you find this tool helpful and would like to support its development, you can buy me a coffee:

<a href="https://buymeacoffee.com/mrhymes" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

**[☕ Buy Me a Coffee](https://buymeacoffee.com/mrhymes)**

Your support is greatly appreciated! 🙏

---

**Good luck with your projects!** 🎵
