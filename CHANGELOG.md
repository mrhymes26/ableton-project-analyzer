# Changelog

All notable changes to this project will be documented in this file.

## [1.0.0] - 2026-01-03

### 📖 Origin
This tool was created during a PC migration to help identify all VST plugins used across multiple Ableton Live projects. It was developed to simplify the process of setting up a new computer by automatically generating a comprehensive list of required plugins and their usage statistics.

### ✨ Features
- **Multi-Threading Support**: Parallel processing of up to 16 threads for optimal performance
- **Batch Analysis**: Analyzes entire directories recursively and automatically finds all .als files
- **Excel Export with 5 Sheets**:
  - Project Overview (all projects with details)
  - VST Overview (all used plugins)
  - Track Details (detailed track-VST mapping)
  - VST Requirements for New PC (unique feature)
  - Statistics (overall statistics, VST frequency, manufacturer analysis)
- **JSON Export**: Complete project data as JSON
- **Recursive VST Lists**: Exports VST lists organized by directories
- **Performance Optimization**: Optimized XML extraction for fast processing
- **Main Directory Grouping**: Organizes projects by main directories
- **Full CLI**: Command-line interface with many options

### 🚀 Performance
- Multi-threading for parallel processing
- Batch processing for better performance
- Optimized XML extraction (ZIP, GZIP, XML)
- Thread-safe implementation

### 📊 Supported Formats
- .als (ZIP format) - New Ableton versions
- .als (GZIP format) - Older Ableton versions
- .als (XML format) - Very old Ableton versions

### 🔧 Technical Details
- Python 3.6+
- Dependencies: pandas, openpyxl
- Windows, macOS, Linux compatible

### 📝 Documentation
- Complete README with examples
- Command-line help
- Error handling and troubleshooting

---

## [Unreleased]

### Planned Features
- GUI version (optional)
- CSV export
- Filter options for VST analysis
- Project comparison function
