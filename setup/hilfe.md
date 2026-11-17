# Hilfe: Anmelden, Git, Hochladen, Modus

Eine Seite für die Fälle, die im Kurs am häufigsten stecken bleiben. Such deinen
Fall in der Übersicht und mach nur diesen Abschnitt.

| Was passiert | Abschnitt |
| --- | --- |
| Mac: Terminal fragt beim Klonen nach Benutzername und Passwort | [1. Mac: anmelden](#1-mac-anmelden) |
| Du weisst nicht mehr, welcher Git-Befehl was tut | [2. Git auf einer Seite](#2-git-auf-einer-seite) |
| `git push` wird abgelehnt oder meldet einen Konflikt | [3. Push klappt nicht](#3-push-klappt-nicht) |
| Der Agent fragt zu oft oder gar nicht | [4. Nachfrage oder Vollzugriff](#4-nachfrage-oder-vollzugriff) |
| Du warst zu spät oder hast einen Kurstag verpasst | [5. Zu spät oder gefehlt](#5-zu-spät-oder-gefehlt) |
| Die Lehrperson sagt «Kursdateien auffrischen» | [6. Kursdateien auffrischen](#6-kursdateien-auffrischen) |
| Du hast (noch) kein GitHub-Konto | [7. Ohne Konto arbeiten, später hochladen](#7-ohne-konto-arbeiten-später-hochladen) |

## 1. Mac: anmelden

Dein GitHub-Passwort funktioniert im Terminal nicht. Git braucht einen **Token**:
ein langes Passwort, das nur für Git gilt.

1. Auf github.com anmelden. Oben rechts dein Bild → **Settings** → ganz unten
   **Developer settings** → **Personal access tokens** → **Tokens (classic)** →
   **Generate new token (classic)**.
2. Note: `kurs`. Expiration: `90 days`. Haken bei **repo**. Unten **Generate token**.
3. Den Token (beginnt mit `ghp_`) kopieren. Er wird nur einmal angezeigt.
4. Im Terminal `git clone …` wiederholen. Bei **Username** deinen GitHub-Namen,
   bei **Password** den Token einfügen (man sieht beim Einfügen nichts, das ist normal).

Der Mac merkt sich den Token im Schlüsselbund. Den Token gibst du nie dem Agenten
und legst ihn in keine Datei im Kursordner.

Hast du schon das Programm `gh` (GitHub CLI)? Dann geht es kürzer:
`gh auth login`, dann GitHub.com → HTTPS → Login with a web browser.

## 2. Git auf einer Seite

| Befehl | Was er tut |
| --- | --- |
| `git status` | Zeigt, was sich seit dem letzten Stand geändert hat. Im Zweifel immer zuerst. |
| `git add -A` | Merkt alle Änderungen für den nächsten Stand vor. |
| `git commit -m "Text"` | Sichert einen Stand auf deinem Rechner, mit kurzer Beschreibung. |
| `git push` | Lädt deine Stände in dein Repo auf GitHub hoch. Das ist deine Abgabe. |
| `git log --oneline` | Listet deine Stände, neuester oben. Die Zahl-Buchstaben-Folge ist der Hash. |
| `git restore <datei>` | Holt eine einzelne Datei auf den letzten Stand zurück. |
| `git reset --hard <hash>` | Setzt den ganzen Ordner auf einen Stand zurück. **Alles danach ist weg.** |

Die Reihenfolge am Ende jedes Kurstags: `git add -A`, `git commit -m "Kurstag N"`, `git push`.

## 3. Push klappt nicht

Lies die Meldung. Die wichtigen Wörter stehen meist in den letzten Zeilen.

| Meldung enthält | Was du tust |
| --- | --- |
| `Everything up-to-date` | Kein Fehler. Du hast vorher nicht committet: `git add -A`, `git commit -m "…"`, dann nochmals `git push`. |
| `rejected` und `fetch first` oder `non-fast-forward` | Auf GitHub liegt ein Stand, den dein Rechner nicht kennt. `git pull --no-rebase`, dann `git push`. |
| `CONFLICT` (nach `git pull`) | Eine Datei wurde an zwei Orten geändert. `git status` zeigt sie. Öffne sie: Zwischen `<<<<<<<` und `>>>>>>>` stehen beide Fassungen. Lass die richtige stehen, lösch die Zeichen, dann `git add -A`, `git commit -m "Konflikt gelöst"`, `git push`. Unsicher: Lehrperson holen, nichts erzwingen. |
| `Authentication failed` oder `403` | Falsches Konto oder abgelaufener Token. Mac: Abschnitt 1. Windows: Lehrperson fragen. |
| `Repository not found` | Du bist mit einem anderen GitHub-Konto angemeldet als beim Annehmen der Aufgabe. |

**Nie** `git push --force`. Das kann deine Abgabe überschreiben.

## 4. Nachfrage oder Vollzugriff

Zwei Ebenen, nicht verwechseln:

- **Das Werkzeug** fragt (oder nicht), bevor es eine Datei schreibt oder einen Befehl
  ausführt. Das ist der **Modus**. Zum Start empfohlen: Nachfrage.
  Sobald du dich sicher fühlst und Speicherpunkte setzt, darfst du umstellen.
- **Der Tutor** zeigt dir im Chat immer zuerst, was er ändern will, und fragt
  (Regel 2 in `AGENTS.md`). Das bleibt auch im Vollzugriff so.

| Werkzeug | Nachfrage (Start) | Vollzugriff (wenn du dich sicher fühlst) |
| --- | --- | --- |
| OpenCode | Ist im Kursordner schon eingestellt (`opencode.json`). | Bei der Rückfrage «Always» / «Immer erlauben» wählen. |
| Claude Code | Standard beim Start. | `Shift+Tab` drücken, bis unten «accept edits on» steht. |
| Codex | `/permissions` eingeben (ältere Versionen: `/approvals`) und die Stufe wählen, die vor Änderungen fragt. | Dort die Stufe wählen, die im Ordner ohne Rückfrage arbeitet. Nie «Full Access» ausserhalb des Kursordners. |

Die Menüs ändern sich mit neuen Versionen. Prüfe immer so: Lass den Agenten eine
Testdatei anlegen. Kommt eine Rückfrage, ist Nachfrage an.

`git push` ist in OpenCode und Claude Code für den Agenten gesperrt. Den Push
tippst du selbst im Terminal.

## 5. Zu spät oder gefehlt

Schreib im Agenten «starte kurs», nenn den Kurstag und sag dazu, wie spät es ist
und dass du später kommst oder einen Tag verpasst hast. Der Begleiter schlägt dir
den kürzesten Weg vor.

Was nie wegfällt:

- **Tag 1 verpasst:** `ANLEITUNG.md` (Repo holen), Prüfskript. Das zuerst, dann Tag 2.
  Den Sicherheits-Führerschein holst du nach, wenn Zeit bleibt.
- **Tag 2 verpasst:** Einen Ablauf anpassen und einmal damit lernen. Das ist der Kern
  des Abschlussprojekts.
- **Jeder Tag:** Lernjournal und `git push` am Schluss.

## 6. Kursdateien auffrischen

Die Lehrperson verbessert die Kursdateien manchmal zwischen den Kurstagen. Dein Repo
bekommt das nicht von selbst. Im Kursordner, im Terminal:

```
git add -A
git commit -m "Stand vor dem Auffrischen"
git fetch https://github.com/aburossi/ki-tutor-kurs.git main
git checkout FETCH_HEAD -- AGENTS.md CLAUDE.md ANLEITUNG.md opencode.json .claude .opencode kurs setup lehrperson tools skills/kurs skills/einstieg skills/journal
git commit -m "Kursdateien aufgefrischt"
```

Das ersetzt nur die Dateien der Lehrperson. Deine eigenen Abläufe, dein Journal und
`mein-stoff/` bleiben, wie sie sind. Steht beim letzten Befehl `nothing to commit`,
war schon alles aktuell.

## 7. Ohne Konto arbeiten, später hochladen

**Heute im Kurs:** Leg kein Konto unter Zeitdruck an. Klone die öffentliche Vorlage:

```
git clone https://github.com/aburossi/ki-tutor-kurs.git
```

Damit läuft alles: Agent, Abläufe, Journal, `profil.md`. Am Schluss sicherst du nur
auf deinem Rechner: `git add -A`, `git commit -m "Kurstag 1"`. Kein `git push`.

**Später, in Ruhe (zu Hause oder nächste Woche):**

1. Einladung aus dem bbw-Postfach annehmen und dabei das GitHub-Konto anlegen
   (`ANLEITUNG.md`), dann die Aufgabe über den Link der Lehrperson annehmen.
2. Im Kursordner dein privates Repo als Ziel eintragen und hochladen:

```
git remote set-url origin https://github.com/freifach-ki/ff26c-ki-tutor-<dein-github-name>.git
git pull --no-rebase --allow-unrelated-histories origin main
git push -u origin main
```

Meldet `git pull` einen Konflikt, gilt Abschnitt 3. Unsicher: Lehrperson fragen.
