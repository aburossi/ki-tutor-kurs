# ki-tutor-kurs — dein KI-Tutor zum Selbstbauen

Dieses Repo ist ein Kursordner für den Freifachkurs KI an der bbw. Darin liegt ein
**KI-Tutor**: eine Sammlung von Anweisungen und Lernabläufen, die dein Agent
(OpenCode, Claude Code oder Codex) liest. Danach begleitet er dich beim Lernen
deines eigenen Schulstoffs: er fragt ab, erklärt, simuliert Prüfungen und schreibt
mit dir ein Lernjournal.

Der Tutor ist kein Ghostwriter. Er schreibt dir keine Aufträge, Vorträge oder
Prüfungsantworten, die du als eigene abgibst. Er hilft dir, es selbst zu können.

Du holst dir ein eigenes Exemplar dieses Repos. Danach passt du die
Abläufe an und baust eigene. Das ist dein Abschlussprojekt.

## Weg im Kurs: Aufgabe annehmen (privates Repo)

Im Freifachkurs bekommst du ein eigenes, **privates** Repo. Nur du und die
Lehrperson sehen es. Dorthin lädst du deine Arbeit hoch (push), und die Lehrperson
sammelt sie am Schluss ein.

Die ausführliche Schritt-für-Schritt-Anleitung steht in [`ANLEITUNG.md`](ANLEITUNG.md).
Kurz:

1. Du bekommst eine Einladung in die Organisation `freifach-ki` an deine
   bbw-Adresse. Nimm sie an (ohne GitHub-Konto legst du dabei eines an).
   Die Einladung gilt 7 Tage.
2. Öffne den Link der Lehrperson
   (`https://classroom50.org/freifach-ki/ff26c/assignments/ki-tutor/accept`)
   und nimm die Aufgabe an.
3. Klone dein Repo:

```bash
git clone https://github.com/freifach-ki/ff26c-ki-tutor-<dein-github-name>.git
cd ff26c-ki-tutor-<dein-github-name>
```

Sichern und hochladen am Ende jeder Sitzung: `git add -A`, `git commit -m "…"`,
`git push`. Den Push machst du selbst, nicht der Agent.

Wer ausserhalb des Kurses mitmachen will, nimmt Weg A oder B.

## Weg A: klonen ohne GitHub-Konto

Du brauchst nur Git. Ein Konto ist nicht nötig, weil das Repo öffentlich ist.

```bash
git clone https://github.com/aburossi/ki-tutor-kurs.git
cd ki-tutor-kurs
```

So liest du das Repo und kannst lokal arbeiten. Hochladen (push) kannst du damit
nicht, das brauchst du im Kurs aber nicht.

## Weg B: forken mit eigenem Konto

Ein Fork ist deine eigene Kopie auf GitHub.

1. Melde dich auf github.com an und öffne
   `https://github.com/aburossi/ki-tutor-kurs`.
2. Klicke oben rechts auf **Fork** und folge den Schritten.
3. Klone deinen Fork:

```bash
git clone https://github.com/<dein-name>/ki-tutor-kurs.git
cd ki-tutor-kurs
```

**Hinweis:** Ein Fork ist öffentlich. Alles, was du in deinen Fork hochlädst, kann
jede Person lesen. Darum ist `mein-stoff/` gesperrt (siehe `.gitignore`) und das
Lernjournal hat eine Regel: keine Namen anderer, keine Noten, nichts Privates.

## Setup in 3 Schritten

Alles passiert im Terminal (Windows: PowerShell, macOS: Terminal).

**Schritt 1: Ordner im Agenten öffnen.**
Wechsle zuerst in den Ordner und starte dort deinen Agenten:

| Werkzeug | Befehl |
| --- | --- |
| OpenCode | `opencode` |
| Claude Code | `claude` |
| Codex | `codex` |

Der Agent liest beim Start `AGENTS.md`. Dort stehen seine Grundregeln.

**Schritt 2: Prüfskript laufen lassen.**
Das Skript schaut, ob Git, dein Name und dein Agent richtig eingerichtet sind.
Es ändert nichts, es zeigt nur OK oder FEHLT.

```powershell
powershell -ExecutionPolicy Bypass -File setup/pruefen.ps1
```

```bash
bash setup/pruefen.sh
```

Ist etwas FEHLT, hilft `setup/installation.md` weiter.

**Schritt 3: Erste Nachricht an den Agenten.**
Tippe im Chat:

```
starte kurs
```

Der Agent fragt, welcher Kurstag ist, und führt dich Schritt für Schritt durch den
Tag. Nach einer Pause oder einem anderen Ablauf geht es mit «weiter kurs» weiter.
Am Ende des Tages sicherst du deine Arbeit und lädst sie hoch (`git push`).

## Ordnerübersicht

```
README.md                diese Datei: holen und starten
ANLEITUNG.md             Schritt für Schritt vom Einladungsmail bis «starte kurs»
AGENTS.md                Grundregeln des Tutors, Liste der Lernabläufe
CLAUDE.md                Verweis auf AGENTS.md für Claude Code
setup/                   Prüfskripte und Installationshilfe
lernjournal/             dein Lernjournal, eine Datei pro Sitzung
mein-stoff/              dein Schulstoff (bleibt lokal, nie auf GitHub)
skills/                  die Lernabläufe, je ein Ordner mit SKILL.md
kurs/                    Ablaufblätter der drei Kurstage
lehrperson/              Unterlagen für die Lehrperson
tools/check.py           Prüfbefehl für dieses Repo
```

## Weiterlesen

- `kurs/sicherheits-fuehrerschein.md` — bevor du dem Agenten Vollzugriff gibst.
  Kurz: erst im Nachfrage-Modus arbeiten, dann Freigabe.
- `kurs/tag-1.md` — was am ersten Kurstag passiert.
