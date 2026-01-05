#!/usr/bin/env python3
"""
Test script to verify SMB path access
"""
import sys
from pathlib import Path

# SMB path (mounted at /Volumes/data)
smb_path = "/Volumes/data/04_Projekte/Musikproduktion/CAMPFIRE/Studio/_Resources/_Ideas Bin/"

print(f"Testing SMB path: {smb_path}")
print("=" * 60)

# Check if path exists
path = Path(smb_path)
if path.exists():
    print(f"✓ Path exists: {path}")
    print(f"✓ Is directory: {path.is_dir()}")
    
    # Count .als files
    als_files = list(path.rglob("*.als"))
    print(f"✓ Found {len(als_files)} Ableton project files (.als)")
    
    if als_files:
        print("\nFirst 5 project files:")
        for i, als_file in enumerate(als_files[:5], 1):
            print(f"  {i}. {als_file.name}")
            print(f"     Path: {als_file}")
    
    # Count subdirectories
    subdirs = [d for d in path.iterdir() if d.is_dir()]
    print(f"\n✓ Found {len(subdirs)} subdirectories")
    
    print("\n" + "=" * 60)
    print("✓ SMB path is accessible and ready for analysis!")
    print("\nTo run the analyzer, use:")
    print(f'  python3 ableton_project_analyzer.py "{smb_path}"')
    print("\nOr with options:")
    print(f'  python3 ableton_project_analyzer.py "{smb_path}" --recursive --txt')
    print(f'  python3 ableton_project_analyzer.py "{smb_path}" --excel analysis.xlsx')
    
else:
    print(f"✗ Path does not exist: {path}")
    print("\nMake sure the SMB share is mounted:")
    print("  mount -t smbfs //username@192.168.178.226/data /Volumes/data")
    sys.exit(1)

