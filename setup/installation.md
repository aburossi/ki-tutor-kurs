# Installation und häufige Probleme

Hier steht, was du vor dem Kurs einmal einrichten musst. Rechne mit etwa 15 Minuten.
Git ist gratis. Im Kurs brauchst du ein GitHub-Konto (siehe `ANLEITUNG.md`). Steckst du beim Anmelden, Hochladen oder im Modus deines Agenten fest: `setup/hilfe.md`.

## 1. Git installieren

Git ist das Programm, das die Versionen deiner Dateien verwaltet (es merkt sich, was
du geändert hast, und kann zurückspringen).

**Windows**

1. Öffne `https://git-scm.com/download/win` und lade das Installationsprogramm.
2. Starte es und klicke dich durch. Die Vorschläge sind in Ordnung.
3. Schliesse das Terminal und öffne es neu.
4. Prüfen: `git --version`

**macOS**

1. Öffne das Terminal und tippe `xcode-select --install`.
2. Bestätige den Dialog. Warte, bis die Installation fertig ist.
3. Prüfen: `git --version`

**Linux**

Installiere Git mit deinem Paketmanager, zum Beispiel `sudo apt install git`.

## 2. Namen und Mail in Git setzen

Git schreibt in jede Sicherung, wer sie gemacht hat. Das bleibt lokal.

```bash
git config --global user.name "dein-github-name"
git config --global user.email "deine@bbw-adresse"
```

Prüfen: `git config --global user.name` zeigt deinen Namen.

## 3. Einen Agenten installieren

Du brauchst einen der drei. Nimm den, den du schon kennst.

| Werkzeug | Offizielle Seite | Start im Kursordner |
| --- | --- | --- |
| OpenCode | `https://opencode.ai` | `opencode` |
| Claude Code | `https://claude.com/claude-code` | `claude` |
| Codex | `https://developers.openai.com/codex` | `codex` |

Folge der Anleitung auf der Seite. Danach öffnest du dein Terminal im Ordner
`ff26c-ki-tutor-<dein-github-name>` und startest den Agenten mit dem Befehl in der dritten Spalte.

## 4. Der Nachfrage-Modus

Im Nachfrage-Modus fragt der Agent vor jeder Änderung an einer Datei nach, und du
siehst den Befehl, den er ausführen will. So passiert nichts, was du nicht wolltest.

Im Kurs starten wir alle so. Sobald du dich sicher fühlst, darfst du den Vollzugriff
einschalten. Der Sicherheits-Führerschein (`kurs/sicherheits-fuehrerschein.md`) hilft dabei.

Wie du den Modus wählst, hängt vom Werkzeug ab und ändert sich manchmal. Schau in
der Anleitung deines Werkzeugs nach «Approval», «Permissions» oder «Nachfrage» und
stell es auf «fragen» statt «automatisch».

## 5. Häufige Probleme

| Problem | Ursache | Lösung |
| --- | --- | --- |
| `git: command not found` | Git ist nicht installiert oder das Terminal ist alt. | Git installieren, Terminal schliessen und neu öffnen. |
| `fatal: not a git repository` | Du bist nicht im Kursordner. | Mit `cd` in den Ordner `ff26c-ki-tutor-<dein-github-name>` wechseln, dann erneut versuchen. |
| `Please tell me who you are` | Name oder Mail fehlen in Git. | Die zwei `git config`-Befehle aus Abschnitt 2 ausführen. |
| Umlaute erscheinen als komische Zeichen | Das Terminal nutzt die falsche Zeichentabelle. | Windows: in den Terminal-Einstellungen UTF-8 wählen. Sonst Dateien mit einem Editor öffnen. |
| Der Agent findet `AGENTS.md` nicht | Der Agent wurde im falschen Ordner gestartet. | Agent im Kursordner starten, nicht im Ordner darüber. |
| `starte ...` macht nichts | Der Agent kennt den Ablauf nicht. | `zeige abläufe` schreiben und den Namen genau so übernehmen. |
| Skript lässt sich nicht starten (Windows) | PowerShell blockiert Skripte. | `powershell -ExecutionPolicy Bypass -File setup\pruefen.ps1` benutzen. |
| `Permission denied` beim Skript (macOS) | Die Datei ist nicht ausführbar. | `bash setup/pruefen.sh` aufrufen statt direkt starten. |

## 6. Wenn du nicht weiterkommst

Schreib in den Chat deines Agenten, was nicht geht, und füge die Fehlermeldung ein.
Zeig es sonst der Lehrperson. Nichts davon ist ein Grund, den Kurs zu verpassen.
