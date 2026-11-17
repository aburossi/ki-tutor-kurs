---
name: journal
description: Führt dein Lernjournal als Gedächtnis des Kurses und als Abgabe — trägt nach jedem Schritt kurz ein, wie es lief, prüft am Schluss alles, was entstanden ist, und sichert auf Wunsch einen Chatverlauf zum Abgeben.
---

## Didaktischer Grundsatz

Reflexion über das eigene Lernen (Metakognition). Wer kurz festhält, was schwierig war und wie er es gelöst hat, merkt sich den Lösungsweg und erkennt beim nächsten Mal schneller, wo es hängt. Das Journal ist dabei dreierlei zugleich: dein Lernprotokoll, das Gedächtnis des Tutors (er liest es beim nächsten Start und weiss, wo du stehst) und deine Abgabe, denn mit jedem `git push` sieht die Lehrperson in Classroom 50, wie du vorankommst.

## Wann benutzen

- automatisch während «starte kurs»: Der Kursbegleiter trägt nach jedem Schritt eine Zeile ein
- «starte journal» oder `/journal`: jetzt einen Eintrag machen, zum Beispiel nach einer Lernsitzung ausserhalb des Kurses
- `/journal review` oder «journal prüfen»: am Ende des Kurstags, vor dem Sichern und Hochladen
- `/journal chat` oder «chat sichern»: einen Chatverlauf als Beleg ins Repo legen

## Vorbereitung

1. Stelle fest, welche Art gewünscht ist: Eintrag, Review oder Chat sichern. Ist es nicht klar, frag in einem Satz.
2. Lies die Journaldateien von heute in `lernjournal/` und, falls vorhanden, `profil.md`. So weisst du, was schon drinsteht, und schreibst nichts doppelt.
3. Datum von heute im Format JJJJ-MM-TT. Die Datei des Kurstags heisst `lernjournal/JJJJ-MM-TT_kurs.md`, eine Lernsitzung ausserhalb des Kurses `lernjournal/JJJJ-MM-TT_<ablauf>.md`.

## Ablauf

**A. Verlaufszeile (während «starte kurs», nach jedem Schritt)**

1. Formuliere eine Zeile für die Tabelle «Verlauf»: Schritt, Stand (erledigt, gekürzt, übersprungen), was schwierig war, wie es gelöst wurde. Nimm nur, was im Gespräch wirklich passiert ist. Gab es nichts Schwieriges, schreib «—». Schritte ohne dich (Pause, Ethik-Ecke) bekommen «erledigt, ohne Tutor» und sonst «—»: Du weisst nicht, was dort passiert ist, also schreibst du nichts darüber.
2. Zeig die Zeile im Chat: «Ich trage ins Journal ein: …». Schreib sie dann in die Datei des Kurstags. Widerspricht die Person, änderst du sie oder lässt sie weg.
3. Existiert die Datei noch nicht, lege sie nach dem Muster unten an (zuerst zeigen, dann schreiben).

**B. Eintrag (`/journal`)**

1. Frag in vier kurzen Fragen, eine nach der anderen: Was hast du gemacht? Was war schwierig, und wie hast du es gelöst? Wie viel hat die KI gemacht und wie viel du? Was nimmst du dir als Nächstes vor? Das Feld «Wie viel hat die KI gemacht» füllst du nie selbst aus, es kommt immer aus der Antwort der Person.
2. Entwirf den Eintrag nach `lernjournal/_vorlage.md` aus diesen Antworten. Zeig ihn, warte auf das OK, dann schreib.

**C. Review (`/journal review`, am Ende des Kurstags)**

1. Liste auf, was heute entstanden oder geändert ist: `git status` und die Dateien `profil.md`, `lernjournal/`, `ABZEICHEN.md`.
2. Prüfe jede Datei an vier Fragen und sag pro Datei in einem Satz das Ergebnis:
   - Steht nur drin, was die Person gesagt oder bestätigt hat?
   - Keine Namen anderer Personen, keine erhaltenen Noten aus Prüfungen, nichts Privates? (Ein Ziel wie «mindestens eine 4.5» ist erlaubt.)
   - Keine längeren Abschnitte aus Skripten der Lehrperson (Stichworte und eigene Worte sind in Ordnung)?
   - Fehlt etwas, das zur Abgabe gehört (Kontrollfragen, «Wie viel hat die KI gemacht», nächster Schritt)? Zähle die Tabelle «Verlauf» gegen die Schrittnummern im Ablaufblatt `kurs/tag-<N>.md` ab und nenne jede fehlende Nummer.
   Nenne die vier Fragen beim Namen und beantworte sie einzeln. Sag nie «alles vollständig», ohne abgezählt zu haben.
3. Schlag pro Mangel genau eine Korrektur vor. Ändere erst nach dem OK.
4. Prüfe, dass `mein-stoff/` nicht in `git status` auftaucht.
5. Sag zum Schluss: «Bereit zum Abgeben» und erinnere an `git add -A`, `git commit -m "…"`, `git push`. Den Push tippt die Person selbst.

**D. Chat sichern (`/journal chat`)**

1. Erkläre: Du kannst den Chat nicht selbst exportieren, das macht das Werkzeug. In OpenCode und Claude Code tippt die Person `/export` und speichert die Datei als `lernjournal/chats/JJJJ-MM-TT_<ablauf>.md` (Ordner anlegen, falls er fehlt). Kennt ihr Werkzeug `/export` nicht, kopiert sie den Verlauf von Hand in diese Datei.
2. Bitte die Person, die Datei vor dem Sichern selbst zu überfliegen. Hilf dabei, wenn sie es will: Stellen mit Namen anderer, Passwörtern oder langen Auszügen aus Skripten kürzen oder schwärzen.
3. Trag im Journal des Tages eine Zeile ein: welcher Chat gesichert ist und warum er als Beleg taugt.

Muster für die Datei des Kurstags:

```
# Kurstag <N> — JJJJ-MM-TT

## Verlauf

| Schritt | Stand | Was schwierig war | Wie gelöst |
| --- | --- | --- | --- |

## Lernen mit dem Tutor

Fach, Thema, Lernablauf, was sitzt, was noch nicht.

## Kontrollfragen mit meinen Antworten

## Wie viel hat die KI gemacht und wie viel ich

## Nächster Schritt
```

## Regeln für den Tutor

- Ins Journal kommt nur, was im Gespräch passiert ist oder was die Person gesagt hat. Erfinde nichts dazu, auch keine Einschätzungen.
- Verlaufszeilen sind kurz: eine Zeile pro Schritt, kein Aufsatz.
- Keine Namen anderer Personen, keine Noten, nichts Privates.
- Grössere Einträge und jede Korrektur beim Review: zeigen, OK abwarten, dann schreiben.
- `mein-stoff/` liest du, du schreibst dort nie etwas hinein.
- Kein `git push`. Du erinnerst nur daran.

## Abschluss

1. Nach einem Eintrag oder Review: Stelle eine Kontrollfrage, zum Beispiel «Was war heute die grösste Schwierigkeit, und was hat geholfen?» Warte auf die Antwort.
2. Sag in einem Satz, was die Lehrperson nach dem Push in Classroom 50 sehen wird.
3. Nach einer Verlaufszeile gibt es keinen Abschluss: Der Kursbegleiter macht mit dem nächsten Schritt weiter.

## Anpassen

- **Die Spalten** im Verlauf darfst du ändern, zum Beispiel um «Zeit gebraucht» ergänzen.
- **Die Prüffragen** im Review sind der Kern. Du darfst eigene dazunehmen, aber keine streichen.
- **Das Sichern von Chats** darfst du weglassen. Wenn du es nutzt, sichere nur Chats, die du als Beleg zeigen willst, nicht jeden.
- **Für deinen eigenen Tutor** in Woche 2 kannst du diesen Ablauf übernehmen: Dann merkt sich auch dein Tutor, wie du vorankommst.
