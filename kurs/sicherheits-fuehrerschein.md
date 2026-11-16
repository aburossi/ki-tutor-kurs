# Sicherheits-Führerschein

15 Minuten, am Kurstag 1. Wer die vier Aufgaben am eigenen Rechner vorzeigt, hat den Führerschein und darf im Vollzugriff arbeiten, also ohne Nachfrage vor jeder Änderung.

Der Führerschein hat vier Regeln. Jede Regel hat einen Grund und einen Handgriff. Die Handgriffe sind kurz, du brauchst sie ab jetzt vor jeder Sitzung.

## Regel 1: Der Agent arbeitet nur im Kursordner

**Warum:** Der Agent darf lesen und schreiben, was du ihm erlaubst. Wenn er im ganzen Benutzerordner unterwegs ist, kann er versehentlich Dateien ändern, die nichts mit dem Kurs zu tun haben: Fotos, Steuererklärung, Bewerbungen. Ein falscher Befehl im falschen Ordner ist schnell getippt.

**Handgriff:** Vor der Arbeit prüfen, wo du bist.

```
pwd
```

Windows-Eingabeaufforderung: `cd`. Es muss ein Pfad sein, der auf deinen Kursordner endet (`ff26c-ki-tutor-<dein-github-name>`). Wenn nicht, mit `cd` in den Kursordner wechseln, bevor du den Agenten startest. Starte den Agenten immer aus diesem Ordner heraus, nie aus dem Benutzerordner.

**Zusatz:** Werkzeuge haben einen Nachfrage-Modus, in dem der Agent vor jeder Änderung fragt. Das ist Regel 4 und gehört dazu.

## Regel 2: Stand sichern und zurückspringen

**Warum:** Ein Agent kann in einem Durchgang zwanzig Dateien ändern. Manchmal ist das gut, manchmal ist es Unsinn. Ohne gesicherten Stand gibt es keinen Weg zurück, und du merkst den Unsinn erst, wenn dein Ablauf nicht mehr startet. Git ist dein Rückweg.

**Handgriffe, in dieser Reihenfolge:**

Vor jeder Sitzung den Stand sichern:

```
git add -A
git commit -m "Stand vor der Sitzung"
```

Nachschauen, welche Stände es gibt:

```
git log --oneline
```

Eine einzelne Datei zurückholen, die kaputt ist:

```
git restore kurs/tag-1.md
```

Alles seit einem Stand verwerfen, wenn der ganze Ordner wirr ist:

```
git reset --hard <commit>
```

**Warnung:** `git reset --hard` löscht alle Änderungen seit diesem Commit, ohne Nachfrage. Was nicht committet ist, ist danach weg. Nimm den Commit-Hash aus `git log --oneline`, nie einen geratenen. Im Zweifel zuerst `git add -A` und committen, dann zurückspringen — so ist der wirre Stand wenigstens gesichert.

## Regel 3: Nichts Geheimes und keine Daten Dritter

**Warum:** Was im Ordner liegt, kann der Agent lesen und in seine Antwort einbauen. Was du in den Chat tippst, verlässt deinen Rechner. Passwörter, API-Schlüssel, Ausweisdaten und Angaben über andere Personen gehören deshalb weder in den Ordner noch in den Chat.

**Handgriffe:**

- Keine Datei mit Passwörtern, Schlüsseln oder Kundendaten in den Ordner legen. Auch nicht «nur kurz».
- Unterlagen von Lehrpersonen nur nach `mein-stoff/`. Dieser Ordner ist absichtlich nicht im Git, weil fremde Skripte urheberrechtlich geschützt sind.
- Im Lernjournal keine Namen anderer Personen, keine Noten, nichts Privates. Das Journal ist versioniert und landet mit `git push` in deinem Repo, dort liest es die Lehrperson.
- Wenn du eine Datei mit verdächtigem Inhalt findest: nicht öffnen lassen, nicht committen, der Lehrperson sagen.

**Handgriff zum Prüfen:** `git status` zeigt, was Git sieht. Steht dort eine Datei, die nicht in den Kurs gehört, nicht committen, sondern löschen oder verschieben.

## Regel 4: Nachfrage-Modus zuerst

**Warum:** Am Anfang weisst du noch nicht, was der Agent kann und was er falsch versteht. Im Nachfrage-Modus zeigt er jede Änderung, bevor er sie macht. Du siehst also, was passiert, und lernst dabei, wie er arbeitet. Vollzugriff ist schneller, aber erst sinnvoll, wenn du die Änderungen beurteilen kannst.

**Handgriff:** Beim Start des Werkzeugs den Modus wählen, der vor Änderungen fragt. Bei OpenCode, Claude Code und Codex heisst das je nach Version anders (zum Beispiel «Ask» oder «Nachfrage»); nimm die Einstellung, bei der vor dem Schreiben einer Datei eine Rückfrage kommt. Probiere es aus: Lass den Agenten eine Testdatei anlegen. Kommt keine Rückfrage, ist der Modus falsch eingestellt.

Ab dem Sicherheits-Führerschein darfst du auf Vollzugriff wechseln. Regel 2 bleibt trotzdem Pflicht, weil Vollzugriff bedeutet: Änderungen passieren ohne Rückfrage.

## Praktische Prüfung

Vier Aufgaben, am eigenen Rechner, vor der Lehrperson oder vor einer anderen Person aus dem Kurs. Reihenfolge einhalten, die Aufgaben bauen aufeinander auf. Wer alle vier zeigt, hat den Führerschein.

**Aufgabe 1: Zeigen, dass du im richtigen Ordner bist.**
Führe `pwd` aus und erkläre in einem Satz, woran man sieht, dass es der Kursordner ist. Nenne eine Datei, die es nur im Kursordner gibt.

**Aufgabe 2: Einen Stand sichern.**
Lege im Kursordner eine neue Datei `test.txt` an, mit einem Satz Inhalt. (Nicht in `mein-stoff/`: Diesen Ordner sieht Git absichtlich nicht, der Commit bliebe leer.) Dann `git add -A` und `git commit -m "Test"`. Zeige mit `git log --oneline`, dass der Stand da ist, und nenne den Commit-Hash.

**Aufgabe 3: Eine Datei kaputt machen lassen und einzeln zurückholen.**
Lass den Agenten eine bestehende Datei verändern, bis sie nicht mehr stimmt, zum Beispiel `kurs/tag-1.md` halb löschen. Dann `git status` zeigen, dann `git restore kurs/tag-1.md`. Zeige, dass die Datei wieder wie vorher ist.

**Aufgabe 4: Zurückspringen mit Warnung.**
Ändere zwei Dateien. Dann spring mit `git reset --hard <commit>` auf den Stand aus Aufgabe 2 zurück. Erkläre vorher laut, was dabei verloren geht, nämlich alle Änderungen seit diesem Commit. Zeige danach `git log --oneline` und `git status`.

**Bestanden, wenn:** Du alle vier Befehle selbst getippt hast, bei Aufgabe 4 die Warnung erklärt hast und weisst, was `git restore` von `git reset --hard` unterscheidet (eine Datei gegen den ganzen Ordner).

Wer eine Aufgabe nicht zeigen kann, bekommt fünf Minuten Zeit, sie nachzuholen. Das ist kein Durchfallen, sondern der Sinn der Übung.
