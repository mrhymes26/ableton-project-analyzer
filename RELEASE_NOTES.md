# Release Notes - Version 1.0.0

**Date:** 2026-01-03  
**Status:** ✅ Production Ready

---

## 🎉 Welcome to Ableton Live Project Analyzer v1.0.0

This is the first stable version of the Ableton Live Project Analyzer - a powerful tool for analyzing Ableton Live projects and extracting all used VST plugins.

## 📖 Origin

This tool was created during a PC migration to help identify all VST plugins used across multiple Ableton Live projects. It was developed to simplify the process of setting up a new computer by automatically generating a comprehensive list of required plugins and their usage statistics.

---

## ✨ Hauptfeatures

### 🚀 Performance-Optimiert
- **Multi-Threading**: Verarbeitet Hunderte von Projekten parallel
- **Batch-Analyse**: Analysiert ganze Verzeichnisse rekursiv
- **Optimierte Extraktion**: Schnelle XML-Extraktion für alle .als Formate

### 📊 Umfassende Excel-Reports
Erstellt detaillierte Excel-Dateien mit **5 Tabellenblättern**:

1. **Projekt-Übersicht**
   - Alle analysierten Projekte
   - Pfad, Tracks, Scenes, VSTs
   - Hauptverzeichnis-Gruppierung

2. **VST-Übersicht**
   - Alle verwendeten VST-Plugins
   - Hersteller, Name, Dateiname, Version
   - Projekt-Zuordnung

3. **Track-Details**
   - Detaillierte Track-VST-Zuordnung
   - Welche VSTs auf welchen Tracks verwendet werden

4. **VST-Bedarf für neuen PC** ⭐
   - Einzigartiges Feature!
   - Erstellt Liste aller benötigten VSTs
   - Sortiert nach Häufigkeit
   - Perfekt für PC-Migration

5. **Statistiken**
   - Gesamtstatistiken (Projekte, Tracks, Scenes, VSTs)
   - VST-Häufigkeit (welche VSTs werden am häufigsten verwendet)
   - Hersteller-Statistiken

### 📁 Flexible Export-Optionen
- **Excel**: Detaillierte Analyse mit 5 Sheets
- **JSON**: Vollständige Projekt-Daten für weitere Verarbeitung
- **TXT**: Rekursive VST-Listen nach Verzeichnissen organisiert

### 🎯 Einfache Verwendung
```bash
# Einfache Analyse
python ableton_project_analyzer.py "Pfad\zu\Projekten"

# Mit Excel-Export
python ableton_project_analyzer.py "Pfad\zu\Projekten" --excel output.xlsx

# Mit Multi-Threading (16 Threads)
python ableton_project_analyzer.py "Pfad\zu\Projekten" --excel output.xlsx --workers 16
```

---

## 📋 Systemanforderungen

- **Python**: 3.6 oder höher
- **Betriebssystem**: Windows, macOS, Linux
- **Abhängigkeiten**: pandas, openpyxl

---

## 🚀 Installation

```bash
# 1. Repository klonen oder herunterladen
git clone <repository-url>
cd ableton-project-analyzer

# 2. Abhängigkeiten installieren
pip install -r requirements.txt

# 3. Fertig! Tool ist einsatzbereit
python ableton_project_analyzer.py --help
```

---

## 📖 Verwendung

### Grundlegende Verwendung
```bash
python ableton_project_analyzer.py "Z:\Pfad\zu\Ableton\Projekten"
```

### Mit Excel-Export
```bash
python ableton_project_analyzer.py "Z:\Pfad\zu\Projekten" --excel "C:\Temp\analyse.xlsx"
```

### Mit JSON-Export
```bash
python ableton_project_analyzer.py "Z:\Pfad\zu\Projekten" --json "output.json"
```

### Mit VST-Listen-Export
```bash
python ableton_project_analyzer.py "Z:\Pfad\zu\Projekten" --txt --recursive
```

### Alle Optionen
```bash
python ableton_project_analyzer.py "Pfad" \
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
**This was the original use case that led to the development of this tool.** Use the "VST-Bedarf für neuen PC" (VST Requirements for New PC) sheet to see which VSTs you need to install on a new computer. This feature was specifically created for PC migration scenarios to simplify the process of setting up a new computer.

### 3. Project Documentation
Automatically create documentation for all your projects.

### 4. VST Statistics
See which VSTs you use most frequently and which manufacturers dominate.

---

## 🔧 Technische Details

### Performance
- **Multi-Threading**: Bis zu 16 parallele Threads (konfigurierbar)
- **Batch-Verarbeitung**: Optimierte Verarbeitung großer Datenmengen
- **Schnelle Extraktion**: Optimierte XML-Parsing-Methoden

### Unterstützte Formate
- ✅ .als (ZIP-Format) - Neue Ableton-Versionen
- ✅ .als (GZIP-Format) - Ältere Ableton-Versionen
- ✅ .als (XML-Format) - Sehr alte Ableton-Versionen

### Fehlerbehandlung
- Robuste Behandlung von beschädigten Projektdateien
- Detaillierte Fehlermeldungen
- Fortschrittsanzeige während der Analyse

---

## 📝 Bekannte Einschränkungen

- Sehr große Projekt-Sammlungen (>1000 Projekte) können einige Minuten dauern
- Benötigt ausreichend RAM für große Analysen
- Excel-Dateien können bei vielen Projekten groß werden

---

## 🐛 Fehlerbehebung

### "ModuleNotFoundError: No module named 'pandas'"
```bash
pip install -r requirements.txt
```

### "Keine Ableton-Projekte gefunden!"
- Überprüfen Sie den Pfad
- Stellen Sie sicher, dass .als Dateien im Verzeichnis vorhanden sind
- Verwenden Sie absolute Pfade

### Performance-Probleme
- Reduzieren Sie die Anzahl der Threads: `--workers 4`
- Verwenden Sie `--quiet` für weniger Ausgabe

---

## 📄 Lizenz

MIT License - Frei verwendbar für private und kommerzielle Zwecke.

---

## 🙏 Danksagungen

Vielen Dank für die Nutzung des Ableton Live Project Analyzers!

Bei Fragen oder Problemen erstellen Sie bitte ein Issue im Repository.

---

**Viel Erfolg mit Ihren Projekten!** 🎵

