# Changelog

All notable changes to this project will be documented in this file.

## [1.0.0] - 2026-01-03

### 📖 Origin
This tool was created during a PC migration to help identify all VST plugins used across multiple Ableton Live projects. It was developed to simplify the process of setting up a new computer by automatically generating a comprehensive list of required plugins and their usage statistics.

### ✨ Features
- **Multi-Threading Support**: Parallele Verarbeitung von bis zu 16 Threads für optimale Performance
- **Batch-Analyse**: Analysiert ganze Verzeichnisse rekursiv und findet automatisch alle .als Dateien
- **Excel-Export mit 5 Sheets**:
  - Projekt-Übersicht (alle Projekte mit Details)
  - VST-Übersicht (alle verwendeten Plugins)
  - Track-Details (detaillierte Track-VST-Zuordnung)
  - VST-Bedarf für neuen PC (einzigartiges Feature)
  - Statistiken (Gesamtstatistiken, VST-Häufigkeit, Hersteller-Analyse)
- **JSON-Export**: Vollständige Projekt-Daten als JSON
- **Rekursive VST-Listen**: Exportiert VST-Listen nach Verzeichnissen organisiert
- **Performance-Optimierung**: Optimierte XML-Extraktion für schnelle Verarbeitung
- **Hauptverzeichnis-Gruppierung**: Organisiert Projekte nach Hauptverzeichnissen
- **Vollständiges CLI**: Kommandozeilen-Interface mit vielen Optionen

### 🚀 Performance
- Multi-Threading für parallele Verarbeitung
- Batch-Verarbeitung für bessere Performance
- Optimierte XML-Extraktion (ZIP, GZIP, XML)
- Thread-sichere Implementierung

### 📊 Unterstützte Formate
- .als (ZIP-Format) - Neue Ableton-Versionen
- .als (GZIP-Format) - Ältere Ableton-Versionen
- .als (XML-Format) - Sehr alte Ableton-Versionen

### 🔧 Technische Details
- Python 3.6+
- Abhängigkeiten: pandas, openpyxl
- Windows, macOS, Linux kompatibel

### 📝 Dokumentation
- Vollständige README mit Beispielen
- Kommandozeilen-Hilfe
- Fehlerbehandlung und Troubleshooting

---

## [Unreleased]

### Geplante Features
- GUI-Version (optional)
- Export als CSV
- Filter-Optionen für VST-Analyse
- Projekt-Vergleichs-Funktion

