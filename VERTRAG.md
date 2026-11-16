# Bauvertrag ki-tutor-kurs

Gilt für alle, die an diesem Repo bauen (Menschen und Agenten). Stand 16.11.2026.

## Worum es geht

Öffentliches Kurs-Repo für den Freifachkurs KI an der bbw (4FF26c, Lernende im 3. und
4. Lehrjahr, alle Berufe). Probelauf 17.11., 24.11. und 01.12.2026, je 2 Lektionen
(90 Minuten). Die Lernenden kennen OpenCode, Claude Code oder Codex schon.

Die Lernenden klonen oder forken das Repo, öffnen es mit ihrem Agenten und haben
einen **KI-Tutor**: Der Agent liest `AGENTS.md` und die Lernabläufe unter `skills/`
und begleitet sie beim Lernen ihres eigenen Schulstoffs. Danach passen sie die
Abläufe an und bauen eigene. Das ist ihr Abschlussprojekt.

## Didaktischer Kern (für jede Datei verbindlich)

- **Der Agent ist Tutor, nicht Ghostwriter.** Er erklärt, fragt, prüft und gibt
  Rückmeldung. Er schreibt keine Aufträge, Vorträge oder Prüfungsantworten, die die
  Lernenden als eigene abgeben.
- Jeder Lernablauf (Skill) nennt **einen** benannten didaktischen Grundsatz
  (z. B. aktives Abrufen, verteiltes Wiederholen, sokratisches Fragen,
  Selbsterklären, Prüfungssimulation) und richtet seinen Ablauf danach aus.
- Jede Sitzung endet mit Kontrollfragen und einem Eintrag im Lernjournal.

## Sprache

Deutsch (Schweiz): «ss» statt Eszett, echte Umlaute (ä, ö, ü), Du-Form, kurze Sätze,
einfache Wörter. Fachwörter beim ersten Auftreten in einem Halbsatz erklären.
Keine Emojis in Dateien.

## Aufbau (feste Namen, niemand weicht ab)

```
README.md                     Klonen/Forken, Setup, erster Start          (Paket repo)
AGENTS.md                     Grundregeln des Tutors, Liste der Abläufe   (Paket repo)
CLAUDE.md                     eine Zeile: Verweis auf AGENTS.md           (Paket repo)
.gitignore                    (Basis, schon da)
setup/pruefen.ps1             Prüfskript Windows                          (Paket repo)
setup/pruefen.sh              Prüfskript macOS/Linux                      (Paket repo)
setup/installation.md         Installation und häufige Probleme          (Paket repo)
lernjournal/README.md         wie das Journal funktioniert                (Paket repo)
lernjournal/_vorlage.md       Vorlage für einen Eintrag                   (Paket repo)
mein-stoff/README.md          was hier hineingehört und was nicht         (Paket repo)
skills/prompting-tutor/SKILL.md                                           (Paket skills)
skills/abfrager/SKILL.md                                                  (Paket skills)
skills/sokrates/SKILL.md                                                  (Paket skills)
skills/erklaer-mirs/SKILL.md                                              (Paket skills)
skills/pruefungssimulator/SKILL.md                                        (Paket skills)
skills/notfall-zusammenfasser/SKILL.md                                    (Paket skills)
skills/_vorlage/SKILL.md      leere Vorlage für eigene Abläufe            (Paket skills)
skills/README.md              Übersicht der Abläufe, wie man sie anpasst  (Paket skills)
kurs/tag-1.md                 Ablaufblatt für Lernende, Kurstag 1         (Paket kurs)
kurs/tag-2.md                                                             (Paket kurs)
kurs/tag-3.md                                                             (Paket kurs)
kurs/sicherheits-fuehrerschein.md                                         (Paket kurs)
kurs/ethik-ecke-1.md  (Was verlässt meinen Rechner?)                      (Paket kurs)
kurs/ethik-ecke-2.md  (Urheberrecht und Lernen oder Abkürzen)             (Paket kurs)
kurs/ethik-ecke-3.md  (Deklaration bei VA und Prüfungen)                  (Paket kurs)
lehrperson/ablauf.md          Zeitplan pro Tag für die Lehrperson, Messpunkte (Paket kurs)
tools/check.py                Prüfbefehl (Basis, schon da)
```

## Wie ein Ablauf aufgerufen wird (werkzeugneutral)

Die Lernenden schreiben im Chat ihres Agenten: **«starte &lt;name&gt;»**, z. B.
«starte abfrager». `AGENTS.md` sagt dem Agenten: dann `skills/<name>/SKILL.md` lesen
und befolgen. «zeige abläufe» listet alle Ordner unter `skills/`. Das funktioniert in
OpenCode, Claude Code und Codex gleich, ohne werkzeugeigene Skill-Ordner.

## Form jeder SKILL.md

Kopf (YAML-Frontmatter) mit genau `name:` (= Ordnername) und `description:`
(ein Satz: was der Ablauf tut und wann man ihn startet). Danach diese Abschnitte,
in dieser Reihenfolge, als `##`-Überschriften:

1. `Didaktischer Grundsatz` (Name des Grundsatzes, 2–4 Sätze warum er wirkt)
2. `Wann benutzen`
3. `Vorbereitung` (was der Agent zuerst fragt: Fach, Thema, Stoff in `mein-stoff/`)
4. `Ablauf` (nummerierte Schritte, eine Frage auf einmal, auf Antwort warten)
5. `Regeln für den Tutor` (was er nie tut)
6. `Abschluss` (Kontrollfragen, Lernjournal-Eintrag nach `lernjournal/_vorlage.md`)
7. `Anpassen` (welche Stellen die Lernenden ändern dürfen und sollen)

## Datenschutz und Sicherheit (Entscheid der Kursleitung)

- `mein-stoff/` ist in `.gitignore` (nur `README.md` ist versioniert): Skripte und
  Unterlagen von Lehrpersonen sind urheberrechtlich geschützt und dürfen nicht in
  einen öffentlichen Fork.
- Das Lernjournal ist versioniert. Regel: keine Namen anderer Personen, keine Noten,
  nichts Privates. Wer seinen Fork pusht, macht das Journal öffentlich.
- Der Agent arbeitet nur im Kursordner. Vor jeder Sitzung Stand sichern
  (`git add -A` und `git commit`), zurückspringen mit `git restore` bzw. `git reset`.
- Start im Nachfrage-Modus des Werkzeugs (Agent fragt vor jeder Änderung),
  Vollzugriff erst nach dem Sicherheits-Führerschein.
- Keine Passwörter, API-Schlüssel oder Daten Dritter im Ordner.

## Was kein Paket tut

- keine Dateien eines anderen Pakets anlegen oder ändern
- keine Namen von Lernenden, Schulnoten oder echte Personendaten
- kein `git push`, kein Netzwerkzugriff nötig
- keine Inhalte, die eine Lehrperson einer bestimmten Schule nennen (ausser «bbw» im README)

## Prüfbefehl

`python tools/check.py <paket>` mit `repo`, `skills` oder `kurs`; ohne Paket alles.
