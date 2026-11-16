#!/usr/bin/env bash
# Prüfskript für den Kursordner (macOS/Linux). Ändert nichts, installiert nichts.
# Aufruf: bash setup/pruefen.sh

fehlt=0

zeige() {
  local status="$1" text="$2" hinweis="$3"
  if [ "$status" = "1" ]; then
    printf 'OK    %s\n' "$text"
  else
    printf 'FEHLT %s\n' "$text"
    [ -n "$hinweis" ] && printf '      Hinweis: %s\n' "$hinweis"
    fehlt=$((fehlt + 1))
  fi
}

echo "Prüfung des Kursordners"
echo

# 1. Git vorhanden
if command -v git >/dev/null 2>&1; then zeige 1 "git ist installiert" ""; else
  zeige 0 "git ist installiert" "Git installieren (macOS: xcode-select --install). Siehe setup/installation.md."
fi

# 2. Name und Mail in der Git-Konfiguration
name=""
mail=""
if command -v git >/dev/null 2>&1; then
  name="$(git config user.name 2>/dev/null)"
  mail="$(git config user.email 2>/dev/null)"
fi
if [ -n "$name" ]; then zeige 1 "git config user.name ist gesetzt" ""; else
  zeige 0 "git config user.name ist gesetzt" 'git config --global user.name "Dein Name"'
fi
if [ -n "$mail" ]; then zeige 1 "git config user.email ist gesetzt" ""; else
  zeige 0 "git config user.email ist gesetzt" 'git config --global user.email "du@beispiel.ch"'
fi

# 3. Mindestens ein Agent
agenten=""
for kandidat in opencode claude codex; do
  if command -v "$kandidat" >/dev/null 2>&1; then
    agenten="$agenten $kandidat"
  fi
done
if [ -n "$agenten" ]; then
  zeige 1 "mindestens ein Agent gefunden ($(echo $agenten))" ""
else
  zeige 0 "mindestens ein Agent gefunden" "OpenCode, Claude Code oder Codex installieren. Siehe setup/installation.md."
fi

# 4. Aktueller Ordner ist ein Git-Repo mit AGENTS.md
in_repo=""
if command -v git >/dev/null 2>&1; then
  in_repo="$(git rev-parse --show-toplevel 2>/dev/null)"
fi
if [ -n "$in_repo" ]; then zeige 1 "der aktuelle Ordner ist ein Git-Repo" ""; else
  zeige 0 "der aktuelle Ordner ist ein Git-Repo" "Im richtigen Ordner sein (cd ki-tutor-kurs) oder git init ausführen."
fi
if [ -f "AGENTS.md" ]; then zeige 1 "AGENTS.md liegt im Ordner" ""; else
  zeige 0 "AGENTS.md liegt im Ordner" "Du bist vermutlich im falschen Ordner. Wechsle in den Ordner ki-tutor-kurs."
fi

# 5. mein-stoff/ existiert
if [ -d "mein-stoff" ]; then zeige 1 "der Ordner mein-stoff/ existiert" ""; else
  zeige 0 "der Ordner mein-stoff/ existiert" "Ordner von Hand anlegen: mkdir mein-stoff"
fi

echo
if [ "$fehlt" -eq 0 ]; then
  echo "Alles bereit. Starte deinen Agenten und schreibe: starte prompting-tutor"
else
  echo "Fertig mit $fehlt offenen Punkten. Oben steht bei jedem Punkt ein Hinweis."
  echo "Mehr Hilfe: setup/installation.md"
fi
