# Tag 1: Nutzen und Öffnen

**Ziel des Tages:** Du hast das Kurs-Repo auf deinem Rechner zum Laufen gebracht, kennst die vier Sicherheitsregeln und hast den Ablauf `prompting-tutor` einmal mit deinem eigenen Schulstoff benutzt.

**Gesamtzeit:** 90 Minuten (2 Lektionen), davon 15 Minuten Sicherheits-Führerschein und 10 Minuten Ethik-Ecke.

## Vorher bereit

- Laptop mit Ladegerät, dein Agent ist installiert (OpenCode, Claude Code oder Codex).
- Ein Thema aus deinem Berufsstoff, das du bis zu einer Prüfung wirklich können musst. Bring die Unterlagen mit, aber lege sie erst später in den Ordner `mein-stoff/`.
- Git ist installiert (`git --version` zeigt eine Version).

## Schritte

- [ ] **0–5 Min: Ankommen.** Setz dich hin, öffne ein Terminal, lies das Ziel oben. Kein Setup in dieser Zeit.
- [ ] **5–15 Min: Repo holen.** Entweder klonen mit `git clone https://github.com/aburossi/ki-tutor-kurs.git` oder auf der Webseite forken und den eigenen Fork klonen. Dann in den Ordner wechseln: `cd ki-tutor-kurs`.
- [ ] **15–25 Min: Setup prüfen.** Windows: `powershell -ExecutionPolicy Bypass -File setup/pruefen.ps1`. macOS und Linux: `bash setup/pruefen.sh`. Das Skript sagt dir, ob Git, dein Agent und die Ordner da sind. Fehlermeldungen nicht wegklicken, sondern in `setup/installation.md` nachschauen.
- [ ] **25–40 Min: Sicherheits-Führerschein.** Arbeite `kurs/sicherheits-fuehrerschein.md` durch. Du zeigst die vier Aufgaben am eigenen Rechner vor. Wer sie zeigt, darf ab jetzt im Vollzugriff arbeiten, also ohne Nachfrage vor jeder Änderung.
- [ ] **40–45 Min: Überblick holen.** Schreib in deinem Agenten «zeige abläufe». Er listet die Ordner unter `skills/`. Schau dir die Namen an und notiere, welcher dich am meisten anspricht.
- [ ] **45–65 Min: Üben mit `prompting-tutor`.** Schreib «starte prompting-tutor». Der Agent fragt dich nach Fach, Thema und Stoff. Antworte ehrlich, auch wenn du unsicher bist. Übe mit einem echten Thema, nicht mit einem Beispiel.
- [ ] **65–70 Min: Den Ablauf lesen.** Öffne `skills/prompting-tutor/SKILL.md` und lies ihn ganz. Notiere zwei Stellen, die du für dein Fach anders machen würdest.
- [ ] **70–75 Min: Pause.** Bildschirm aus, aufstehen. Die Pause gehört zum Plan.
- [ ] **75–85 Min: Ethik-Ecke 1.** `kurs/ethik-ecke-1.md`, 10 Minuten: kurzer Input, Diskussionsfrage, Abstimmung.
- [ ] **85–90 Min: Lernjournal.** Schreib einen Eintrag nach `lernjournal/_vorlage.md`: was du gemacht hast, was gut lief, was du nicht verstanden hast, was du das nächste Mal anders machst. Keine Namen anderer Personen, keine Noten, nichts Privates.

## Am Ende des Tages liegt vor

- Eine laufende Kopie des Repos auf deinem Rechner, `setup/pruefen.*` ist ohne roten Fehler durchgelaufen.
- Der Sicherheits-Führerschein ist vorgezeigt, du arbeitest im Vollzugriff.
- Eine geübte Sitzung mit `prompting-tutor` zu einem eigenen Thema.
- Ein Eintrag im Lernjournal.

## Wenn du nicht weiterkommst

1. **Das Setup-Skript bricht ab.** Lies die letzte Zeile der Fehlermeldung, nicht die erste. Meistens fehlt Git oder der Agent ist nicht im Suchpfad. `setup/installation.md` nennt die häufigsten Fälle. Wenn es nach 5 Minuten nicht läuft: Nachbarin oder Nachbar fragen, nicht weiterprobieren.
2. **Der Agent findet die Abläufe nicht.** Prüfe, ob du wirklich im Ordner `ki-tutor-kurs` bist (`pwd` bzw. `dir`). Schreib dann «zeige abläufe» noch einmal. Wenn die Liste leer bleibt, fehlt `AGENTS.md` im Ordner — dann neu klonen.
3. **Du kommst beim Üben nicht weiter, weil der Agent zu viel redet.** Schreib: «Eine Frage auf einmal, warte auf meine Antwort.» Das ist erlaubt und steht so im Ablauf. Wenn es dann noch nicht passt, notiere die Stelle für Tag 2 — dort darfst du den Ablauf ändern.

## Schneller fertig?

Öffne `skills/README.md` und lies die Übersicht der sechs Abläufe. Wähle den Ablauf, den du an Tag 2 anpassen willst, und schreib in dein Lernjournal drei Sätze: welcher Ablauf, welches Fach, was du daran ändern willst. Damit sparst du an Tag 2 die ersten zehn Minuten.
