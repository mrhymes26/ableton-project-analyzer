#!/bin/bash
# Test script for Ableton Project Analyzer with SMB path

SMB_PATH="/Volumes/data/04_Projekte/Musikproduktion/CAMPFIRE/Studio/_Resources/_Ideas Bin/"

echo "=========================================="
echo "Testing Ableton Project Analyzer"
echo "=========================================="
echo ""
echo "SMB Path: $SMB_PATH"
echo ""

# Check if path exists
if [ ! -d "$SMB_PATH" ]; then
    echo "ERROR: Path does not exist!"
    exit 1
fi

echo "✓ Path exists"
echo ""

# Count .als files
ALS_COUNT=$(find "$SMB_PATH" -name "*.als" 2>/dev/null | wc -l | tr -d ' ')
echo "Found $ALS_COUNT Ableton project files (.als)"
echo ""

# Run the analyzer
cd "$(dirname "$0")"

echo "Running analyzer..."
echo ""

# Test 1: Basic analysis
python3 ableton_project_analyzer.py "$SMB_PATH" --quiet

echo ""
echo "=========================================="
echo "Test complete!"
echo "=========================================="

