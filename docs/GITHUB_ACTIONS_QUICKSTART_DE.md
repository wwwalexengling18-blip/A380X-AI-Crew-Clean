# GitHub Actions Quickstart (DE)

## Ziel
Automatisch eine `Setup.exe` aus dem Projekt bauen.

## Wichtigster Punkt
Lade die Dateien aus diesem ZIP **direkt** in den Repo-Root hoch.

Richtig (im Repo sichtbar):
- `.github/`
- `src/`
- `tools/`
- `config/`
- `sops/`
- `installer/`

Falsch:
- `MeinRepo/FBW_A380X_AI_Crew_Phase1-8_Starter/...`

## Start
1. Repository erstellen
2. Dateien hochladen
3. In GitHub auf **Aktionen**
4. Workflow **Build Setup EXE** öffnen
5. **Workflow ausführen**
6. Unter dem Lauf die Artefakte herunterladen

## Typische Fehler
- `tools/run_ai.py existiert nicht` → Dateien liegen in falschem Unterordner
- `Pfad nicht gefunden` bei Inno Setup → `installer/A380X_AI_Setup.iss` fehlt oder Ordnername falsch
