# Tag 1: Einen fertigen Tutor erleben

**Ziel des Tages:** Du hast das Kurs-Repo auf deinem Rechner zum Laufen gebracht, kennst die vier Sicherheitsregeln, und der Tutor hat dich in einem Fach kennengelernt, in dem du bald einen Test hast oder dich unsicher fühlst. Dein Profil liegt in `profil.md`, und du hast einmal mit dem Tutor gelernt.

**Gesamtzeit:** 90 Minuten (2 Lektionen), davon 15 Minuten Sicherheits-Führerschein (Übung) und 10 Minuten Ethik-Ecke.

**Woche 1 von 3.** Heute erlebst du einen fertigen Tutor. In Woche 2 baust du mit dem Agenten deinen eigenen, in Woche 3 machst du ihn fertig. Jede Woche gibt es einen eigenen Auftrag in Classroom 50. Was heute in `profil.md` steht, ist der Bauauftrag für Woche 2.

## Vorher bereit

- Laptop mit Ladegerät, dein Agent ist installiert (OpenCode, Claude Code oder Codex).
- Ein Fach, in dem du bald einen Test hast oder dich unsicher fühlst, und die Unterlagen dazu als Datei: Skript, Präsentation, Arbeitsblätter, eigene Notizen. Text oder PDF mit Text geht am besten.
- Git ist installiert (`git --version` zeigt eine Version).

## Schritte

- [ ] **Schritt 1 · 0–5 Min: Ankommen.** Setz dich hin, öffne ein Terminal, lies das Ziel oben. Kein Setup in dieser Zeit.
- [ ] **Schritt 2 · 5–15 Min: Repo holen.** Im Kurs bekommst du ein eigenes, privates Repo (Schritt für Schritt in `ANLEITUNG.md`): Einladung in die Organisation `freifach-ki` aus dem bbw-Postfach annehmen, dann den Link der Lehrperson öffnen und die Aufgabe annehmen. Dein Repo heisst `ff26c-ki-tutor-<dein-github-name>`. Klone es mit `git clone https://github.com/freifach-ki/ff26c-ki-tutor-<dein-github-name>.git` und wechsle in den Ordner. **Ohne GitHub-Konto:** Leg heute kein Konto an. Klone `git clone https://github.com/aburossi/ki-tutor-kurs.git` und arbeite damit. Du sicherst heute nur mit `git commit`, hochladen holst du nach (`setup/hilfe.md`, Abschnitt 7). Starte dann im Ordner deinen Agenten und schreib **«starte kurs»** (oder `/kurs`): Ab hier führt dich der Agent durch die Schritte unten.
- [ ] **Schritt 3 · 15–25 Min: Setup prüfen.** Windows: `powershell -ExecutionPolicy Bypass -File setup/pruefen.ps1`. macOS und Linux: `bash setup/pruefen.sh`. Das Skript sagt dir, ob Git, dein Agent und die Ordner da sind. Fehlermeldungen nicht wegklicken, sondern in `setup/installation.md` nachschauen.
- [ ] **Schritt 4 · 25–40 Min: Sicherheits-Führerschein.** Der Agent führt dich durch vier Stationen in `kurs/sicherheits-fuehrerschein.md`: Ordner prüfen, Speicherpunkt setzen, Sabotage und Rettung, was nicht in den Chat gehört. Am Schluss ein paar Fragen. Danach das Abzeichen «Führerschein» in `ABZEICHEN.md` abhaken.
- [ ] **Schritt 5 · 40–45 Min: Unterlagen ablegen.** Lege deine Unterlagen in `mein-stoff/<fach>/`, zum Beispiel `mein-stoff/rechnungswesen/`. Der Ordner geht nie auf GitHub. Keine Namen anderer Personen, keine Noten, keine Fotos von Mitschülerinnen und Mitschülern. Prüfe mit `git status`: Deine Dateien dürfen dort nicht auftauchen.
- [ ] **Schritt 6 · 45–57 Min: Der Tutor lernt dich kennen.** Schreib **«starte einstieg»** (oder `/einstieg`). Der Tutor fragt dich der Reihe nach: Fach, wie sicher du dich fühlst, dein Ziel, was typischerweise schiefgeht, welche Unterlagen du hast. Auf Wunsch sucht er im Netz ein paar gute Quellen. Am Schluss steht alles in `profil.md`. Antworte ehrlich, auch «weiss nicht» ist eine Antwort.
- [ ] **Schritt 7 · 57–65 Min: Mit dem Tutor lernen.** Der Tutor schlägt dir einen Lernablauf vor, der zu deinem Profil passt. Starte ihn («starte <name>») und lerne acht Minuten damit, an deinem echten Stoff. Wenn die Zeit um ist, schreib «Schluss für heute» und dann «weiter kurs».
- [ ] **Schritt 8 · 65–70 Min: Hinter die Kulissen.** Öffne `skills/einstieg/SKILL.md` und lies ihn. Das ist kein Programm, sondern ein langer Text an die KI. Notiere zwei Stellen: eine, die dir beim Interview aufgefallen ist, und eine, die du für deinen eigenen Tutor anders machen würdest.
- [ ] **Schritt 9 · 70–75 Min: Pause.** Bildschirm aus, aufstehen. Die Pause gehört zum Plan.
- [ ] **Schritt 10 · 75–85 Min: Ethik-Ecke 1.** `kurs/ethik-ecke-1.md`, 10 Minuten: kurzer Input, Diskussionsfrage, Abstimmung.
- [ ] **Schritt 11 · 85–90 Min: Journal prüfen und abgeben.** Der Agent hat nach jedem Schritt eine Zeile in dein Journal `lernjournal/<datum>_kurs.md` eingetragen. Jetzt ergänzt ihr Kontrollfragen und nächsten Schritt, dann schreibst du **`/journal review`**: Der Agent prüft alles, was heute entstanden ist (keine Namen anderer, keine Noten, nichts Erfundenes). Wer will, sichert einen Chat als Beleg (`/journal chat`). Danach sichern und hochladen: `git add -A`, `git commit -m "Kurstag 1"`, `git push`. Ohne Konto: nur `git add -A` und `git commit`.

## Am Ende des Tages liegt vor

- Eine laufende Kopie des Repos auf deinem Rechner, `setup/pruefen.*` ist ohne roten Fehler durchgelaufen.
- Die vier Stationen des Sicherheits-Führerscheins sind ausprobiert.
- `profil.md` mit deinem Fach, deinem Niveau, deinem Ziel und deinen Schwächen.
- Eine kurze Lernsitzung mit dem Tutor an deinem eigenen Stoff.
- Ein Eintrag im Lernjournal, hochgeladen mit `git push` (ohne Konto: committet).
- Die Abzeichen von heute sind in `ABZEICHEN.md` abgehakt.

## Wenn du nicht weiterkommst

Anmelden, Push-Fehler, Modus des Agenten, zu spät, ohne Konto: `setup/hilfe.md`.

1. **Das Setup-Skript bricht ab.** Lies die letzte Zeile der Fehlermeldung, nicht die erste. Meistens fehlt Git oder der Agent ist nicht im Suchpfad. `setup/installation.md` nennt die häufigsten Fälle. Wenn es nach 5 Minuten nicht läuft: Nachbarin oder Nachbar fragen, nicht weiterprobieren.
2. **Der Agent findet die Abläufe nicht.** Prüfe, ob du wirklich im Kursordner bist (`pwd`). Schreib dann «zeige abläufe» noch einmal. Wenn die Liste leer bleibt, fehlt `AGENTS.md` im Ordner — dann neu klonen.
3. **Der Tutor kann deine Unterlagen nicht lesen.** Manche PDFs sind nur Bilder, Präsentationen kann er oft nicht öffnen. Kopiere den Text der wichtigsten Seiten in eine Datei `mein-stoff/<fach>/notizen.txt`, oder erzähl dem Tutor in drei Sätzen, worum es geht.
4. **Der Agent redet zu viel.** Schreib: «Eine Frage auf einmal, warte auf meine Antwort.» Das ist erlaubt und steht so in den Abläufen.

## Schneller fertig?

Schreib «starte prompting-tutor». Du übst, einer KI einen guten Auftrag zu geben, und bekommst Rückmeldung zu deinem eigenen Prompt. Das brauchst du in Woche 2: Wer einen Tutor bauen lässt, muss gut beauftragen können.
