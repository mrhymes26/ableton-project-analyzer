# Ableton Live Project Analyzer

**Version 1.0.0** - Fully functional version

A powerful Python tool for analyzing Ableton Live projects and extracting used VST plugins. Optimized for performance with multi-threading and batch processing.

## 📖 Origin

This tool was created during a PC migration to help identify all VST plugins used across multiple Ableton Live projects. It was developed to simplify the process of setting up a new computer by automatically generating a comprehensive list of required plugins and their usage statistics.

## Features

> **💡 Note:** This tool was created during a PC migration to help identify all VST plugins used across multiple Ableton Live projects. The "VST Requirements" feature helps you identify which plugins you need.

### 🚀 Performance-Optimized
- ✅ **Multi-Threading**: Processes hundreds of projects in parallel (up to 16 threads)
- ✅ **Batch Processing**: Optimized processing of large datasets
- ✅ **Fast Extraction**: Optimized XML parsing methods

### 📊 Excel Export with 5 Sheets
1. **Project Overview** - All analyzed projects with details
2. **VST Overview** - All used VST plugins
3. **Track Details** - Detailed track-VST mapping
4. **VST Requirements** ⭐ - Complete list of all required VST plugins with usage statistics
5. **Statistics** ⭐ - Overall statistics, VST frequency, manufacturer analysis

### 📁 Flexible Export Options
- ✅ **Excel** (.xlsx) - Detailed analysis with 5 sheets
- ✅ **JSON** - Complete project data for further processing
- ✅ **TXT** - Recursive VST lists organized by directories

### 🎯 Additional Features
- 🔍 Automatic search for Ableton projects (.als files)
- 📊 Analysis of project structure (Tracks, Scenes)
- 🎛️ Extraction of all used VST plugins
- 📋 Detailed listing with manufacturer and plugin names
- 🎯 User-friendly console output
- 🔄 Recursive search for .als files
- 📁 Main directory grouping

## 🚀 Quick Start (Easiest Way)

### Step 1: Install Dependencies (One Time Only)

**Windows/Linux:**
```bash
pip install pandas openpyxl
```

**macOS:**
```bash
pip3 install pandas openpyxl
```

> **⚠️ macOS Users:** If you encounter Xcode license errors, run `sudo xcodebuild -license accept` first.

### Step 2: Run the Tool

**Windows:**
```bash
python ableton_project_analyzer.py "Z:\Path\to\Your\Projects" --excel "output.xlsx"
```

**macOS/Linux:**
```bash
python3 ableton_project_analyzer.py "/path/to/Your/Projects" --excel "output.xlsx"
```

**That's it!** The Excel file will be created with all your project and VST information.

### Windows Users - Even Easier:
- Drag and drop a folder onto `run_analyzer.bat` (after installing dependencies)

---

## Installation

### Windows/Linux
```bash
# 1. Clone repository or download release
git clone <repository>
cd ableton-project-analyzer-release

# 2. Install dependencies
pip install -r requirements.txt

# 3. Ready to use!
python ableton_project_analyzer.py --help
```

### macOS
```bash
# 1. Clone repository or download release
git clone <repository>
cd ableton-project-analyzer-release

# 2. Install dependencies
pip3 install -r requirements.txt

# 3. Ready to use!
python3 ableton_project_analyzer.py --help
```

> **💡 macOS Note:** macOS comes with Python 3 pre-installed. Use `python3` and `pip3` commands instead of `python` and `pip`.
>
> **Alternative:** If you have Homebrew Python installed, you can use:
> ```bash
> /opt/homebrew/bin/python3 ableton_project_analyzer.py --help
> ```

### System Requirements
- **Python**: 3.6 or higher
- **Dependencies**: pandas, openpyxl
- **Operating System**: Windows, macOS, Linux

## Usage

### Easiest Method (Windows)

**Drag and drop a folder** containing .als files onto `run_analyzer.bat`

The tool will:
1. Automatically check for Python and dependencies
2. Analyze all projects in the folder
3. Create an Excel file with all results

### Basic Usage (Command Line)

**Windows:**
```bash
python ableton_project_analyzer.py "Z:\Path\to\Projects"
```

**macOS/Linux:**
```bash
python3 ableton_project_analyzer.py "/path/to/Projects"
```

### With Excel Export

**Windows:**
```bash
python ableton_project_analyzer.py "Z:\Path\to\Projects" --excel "C:\Temp\analysis.xlsx"
```

**macOS/Linux:**
```bash
python3 ableton_project_analyzer.py "/path/to/Projects" --excel "~/Desktop/analysis.xlsx"
```

### With JSON Export

**Windows:**
```bash
python ableton_project_analyzer.py "Z:\Path\to\Projects" --json results.json
```

**macOS/Linux:**
```bash
python3 ableton_project_analyzer.py "/path/to/Projects" --json results.json
```

### With VST Lists Export

**Windows:**
```bash
python ableton_project_analyzer.py "Z:\Path\to\Projects" --txt --recursive
```

**macOS/Linux:**
```bash
python3 ableton_project_analyzer.py "/path/to/Projects" --txt --recursive
```

### With Multi-Threading

**Windows:**
```bash
python ableton_project_analyzer.py "Z:\Path\to\Projects" --excel "output.xlsx" --workers 16
```

**macOS/Linux:**
```bash
python3 ableton_project_analyzer.py "/path/to/Projects" --excel "output.xlsx" --workers 16
```

### Using Network/SMB Paths (macOS)

The tool works with mounted network drives and SMB shares:

```bash
# If SMB share is mounted at /Volumes/data
python3 ableton_project_analyzer.py "/Volumes/data/Projects" --excel "analysis.xlsx"

# Example with SMB path
python3 ableton_project_analyzer.py "/Volumes/data/04_Projekte/Musikproduktion/CAMPFIRE/Studio/_Resources/_Ideas Bin/" --recursive --txt
```

> **💡 Tip:** Mount SMB shares first using Finder (Go → Connect to Server) or command line:
> ```bash
> mount -t smbfs //username@server/share /Volumes/mountpoint
> ```

### All Options

```bash
python ableton_project_analyzer.py <path> [OPTIONS]

Options:
  --json <file>        Export results as JSON
  --txt                Export VST lists as TXT
  --excel <file>       Export as Excel
  --recursive          Recursive analysis with subdirectories
  --quiet              Reduced output
  --workers <n>        Number of parallel threads (default: 16)
```

## Example Output

```
Searching for Ableton projects in: Z:\Path\to\Projects
Found: 3 project(s)
--------------------------------------------------
Analyzing: MyTrack.als
  ✓ 5 VST(s) found
Analyzing: BeatProject.als
  ✓ 8 VST(s) found
Analyzing: AmbientSong.als
  ✓ 3 VST(s) found
--------------------------------------------------

=== SUMMARY ===
Analyzed projects: 3
Total VSTs: 12

=== PROJECT DETAILS ===

📁 MyTrack
   Path: Z:\Path\to\Projects\MyTrack.als
   Tracks: 8
   Scenes: 4
   VSTs: 5
   Used VSTs:
     • Native Instruments - Massive
     • FabFilter - Pro-Q 3
     • Waves - CLA-2A
     • Serum - Serum
     • Valhalla DSP - ValhallaRoom

=== ALL USED VSTs ===
• FabFilter - Pro-Q 3
• Native Instruments - Massive
• Serum - Serum
• Valhalla DSP - ValhallaRoom
• Waves - CLA-2A
```

## Output Files

### Excel Export
Creates a single `.xlsx` file with 5 sheets containing all analysis data. The file is saved at the location you specify:
```bash
python3 ableton_project_analyzer.py "/path/to/Projects" --excel "~/Desktop/analysis.xlsx"
```

### JSON Export
Creates a single JSON file with complete project data:
```bash
python3 ableton_project_analyzer.py "/path/to/Projects" --json "results.json"
```

### TXT Export (Recursive)
When using `--txt --recursive`, the tool creates a `vst_lists/` directory in the current working directory with:
- Individual VST list files for each project (organized by main directory)
- `00_INVENTORY_SUMMARY.txt` - Complete inventory summary
- `00_VST_REQUIREMENTS.txt` - VST requirements list

**Example structure:**
```
vst_lists/
├── 00_INVENTORY_SUMMARY.txt
├── 00_VST_REQUIREMENTS.txt
├── MainDirectory1/
│   ├── Project1_VSTs.txt
│   └── Project2_VSTs.txt
└── MainDirectory2/
    └── Project3_VSTs.txt
```

> **💡 Tip:** The output directory is created in the directory where you run the command, not in the project directory.

## JSON Export Format

```json
{
  "summary": {
    "total_projects": 3,
    "total_vsts": 12,
    "analyzed_path": "Z:\\Path\\to\\Projects"
  },
  "projects": [
    {
      "name": "MyTrack",
      "path": "Z:\\Path\\to\\Projects\\MyTrack.als",
      "vsts": [
        {
          "name": "Massive",
          "manufacturer": "Native Instruments",
          "path": "",
          "id": ""
        }
      ],
      "tracks": 8,
      "scenes": 4
    }
  ],
  "all_vsts": [
    "FabFilter - Pro-Q 3",
    "Native Instruments - Massive"
  ]
}
```

## Technical Details

- **Ableton Project Format**: The tool analyzes .als files, which are actually ZIP archives containing XML files
- **XML Parsing**: Uses Python's built-in `xml.etree.ElementTree` for analysis
- **VST Extraction**: Searches for `PluginDevice` and `VstPluginInfo` elements in the project XML
- **Error Handling**: Robust handling of corrupted or invalid project files

## Compatibility

- ✅ Ableton Live 9.x and higher
- ✅ Windows, macOS, Linux
- ✅ Python 3.6+

## Troubleshooting

### "No Ableton projects found!"
- Check the path
- Make sure .als files are present in the directory
- Use absolute paths if you encounter problems
- **macOS:** Make sure paths use forward slashes (`/`) not backslashes (`\`)

### "Error parsing XML file"
- The project file might be corrupted
- Try opening the project in Ableton Live and saving it again

### "Warning: does not appear to be a valid Ableton project file"
- The file might not be a real Ableton project file
- Check the file extension (.als)

### macOS-Specific Issues

#### "You have not agreed to the Xcode license agreements"
**Problem:** Python requires Xcode Command Line Tools license acceptance.

**Solution:**
```bash
sudo xcodebuild -license accept
```
You'll be prompted for your password. After accepting, Python commands will work normally.

#### "ModuleNotFoundError: No module named 'pandas'"
**Problem:** Dependencies not installed or using wrong Python version.

**Solution:**
```bash
# Make sure you're using pip3 on macOS
pip3 install pandas openpyxl

# Or install from requirements.txt
pip3 install -r requirements.txt
```

#### "python: command not found" (macOS)
**Problem:** macOS uses `python3` instead of `python`.

**Solution:**
- Always use `python3` instead of `python` on macOS
- Use `pip3` instead of `pip` on macOS

#### Network/SMB Path Issues (macOS)
**Problem:** Cannot access network drives or SMB shares.

**Solution:**
1. Mount the network drive first using Finder:
   - Go → Connect to Server (⌘K)
   - Enter: `smb://server/share`
   - Mount point will be in `/Volumes/`

2. Use the mounted path:
   ```bash
   # Check if mounted
   ls /Volumes/
   
   # Use the mounted path
   python3 ableton_project_analyzer.py "/Volumes/mountname/path/to/projects"
   ```

3. Verify mount status:
   ```bash
   mount | grep smb
   ```

#### Permission Denied Errors
**Problem:** Cannot read files or write output files.

**Solution:**
- Check file permissions: `ls -la /path/to/projects`
- Make sure you have read access to project files
- Make sure you have write access to output directory

## License

MIT License - Free to use for private and commercial purposes.

---

## ☕ Support

If you find this tool helpful and would like to support its development, you can buy me a coffee:

**[☕ Buy Me a Coffee](https://buymeacoffee.com/mrhymes)**

Your support is greatly appreciated! 🙏

---

**Good luck with your projects!** 🎵
