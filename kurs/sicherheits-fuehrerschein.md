# Sicherheits-Führerschein: vier Stationen

Etwa 15 Minuten am Kurstag 1. Eine Übung, keine Prüfung: Du probierst die vier
Sicherheits-Handgriffe einmal selbst aus, auch das Kaputtmachen. Der Agent erklärt
jede Station, du tippst. Am Schluss stellt er dir ein paar Fragen. Ob alles sitzt,
spielt für den weiteren Kurs keine Rolle, du kannst jede Station später wiederholen.

Der Agent führt dich mit «starte kurs» hierher. Ohne Kursbegleiter schreibst du:
«Lies kurs/sicherheits-fuehrerschein.md und führe mich durch die Stationen.»

## Station 1: Wo bin ich?

**Warum:** Der Agent darf lesen und schreiben, was du ihm erlaubst. Startest du ihn
im Benutzerordner, kommt er an deine Fotos, Bewerbungen, Steuererklärung.

**Mission:** Tippe `pwd`. Der Pfad muss auf deinen Kursordner enden
(`ff26c-ki-tutor-<dein-github-name>`). Nenne eine Datei, die es nur hier gibt.
Starte den Agenten immer aus diesem Ordner.

## Station 2: Speicherpunkt setzen

**Warum:** Ein Agent kann in einem Durchgang zwanzig Dateien ändern. Git ist dein
Speicherpunkt wie in einem Spiel: Geht etwas schief, lädst du ihn neu.

**Mission:** Lege im Kursordner `test.txt` mit einem Satz an (nicht in `mein-stoff/`,
den Ordner sieht Git absichtlich nicht). Dann:

```
git add -A
git commit -m "Speicherpunkt"
git log --oneline
```

Die Zahl-Buchstaben-Folge vorne ist dein Speicherpunkt (der Hash).

## Station 3: Sabotage und Rettung

**Warum:** Du sollst einmal erlebt haben, dass kaputt nicht schlimm ist, wenn du
gesichert hast.

**Mission:** Bitte den Agenten, `kurs/tag-1.md` halb zu löschen. Schau mit
`git status`, was Git bemerkt. Rette die Datei mit:

```
git restore kurs/tag-1.md
```

Kontrolle: Die Datei ist wieder ganz, und `git status` meldet keine Änderung mehr.

**Bonus, wer mag:** Ändere zwei Dateien und spring mit `git reset --hard <hash>`
auf den Speicherpunkt aus Station 2 zurück. Achtung: Das löscht **alle** Änderungen
seit diesem Speicherpunkt, ohne Nachfrage. `restore` rettet eine Datei,
`reset --hard` setzt den ganzen Ordner zurück.

## Station 4: Was nicht in den Chat gehört

**Warum:** Was du in den Chat tippst oder in den Ordner legst, kann deinen Rechner
verlassen.

**Mission:** Sortiere mit dem Agenten fünf Dinge in «darf rein» und «bleibt draussen»:
eigene Notizen, ein Passwort, das Skript der Lehrperson, die Note einer Kollegin,
deine eigene Zusammenfassung.

Auflösung: Passwörter und Daten anderer Personen bleiben draussen. Skripte der
Lehrperson gehören nach `mein-stoff/`: Dort arbeitet der Tutor damit, das ist
seine Grundaufgabe. Dieser Ordner geht nie auf GitHub. `git status`
zeigt dir, was Git sieht. Aber: Was der Agent aus `mein-stoff/` liest, geht an den
Anbieter des Sprachmodells. `mein-stoff/` schützt vor GitHub, nicht vor dem Anbieter.
Darüber sprecht ihr in der Ethik-Ecke 1.

## Nachfrage oder Vollzugriff

Der Agent kann vor jeder Änderung fragen (Nachfrage) oder direkt arbeiten
(Vollzugriff). Zum Start empfehlen wir Nachfrage, dann siehst du, was er tut. Sobald
du dich sicher fühlst und Speicherpunkte setzt, darfst du umstellen. Wie das geht,
steht in `setup/hilfe.md`, Abschnitt 4.

## Fragen am Schluss

Der Agent stellt dir drei oder vier davon, eine nach der anderen:

1. Woran erkennst du, dass du im richtigen Ordner bist?
2. Was ist ein Speicherpunkt in Git, und mit welchen Befehlen setzt du ihn?
3. Was ist der Unterschied zwischen `git restore` und `git reset --hard`?
4. Warum geht `mein-stoff/` nie auf GitHub?
5. Was tippst du nie in den Chat?

Danach hakst du das Abzeichen «Führerschein» in `ABZEICHEN.md` ab.
