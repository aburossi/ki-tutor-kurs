# Lernabläufe (Skills)

Ein Lernablauf ist eine Anleitung für deinen KI-Agenten: eine Datei mit sieben
Abschnitten, die sagt, wie er mit dir lernen soll. Du startest einen Ablauf im Chat
mit **«starte <name>»**, zum Beispiel «starte abfrager». Dein Agent liest dann
`skills/abfrager/SKILL.md` und arbeitet danach.

## Übersicht

| Ablauf | Grundsatz | Wann starten |
| --- | --- | --- |
| Prompting-Tutor | Lernen durch Rückmeldung und Überarbeitung | am Kurstag 1; wenn du lernen willst, einen Agenten gut anzuleiten |
| Abfrager | Aktives Abrufen | nach dem Lesen; vor einer Prüfung; wenn du unsicher bist, was hängen blieb |
| Sokrates | Sokratisches Fragen | wenn du etwas «irgendwie verstehst», es aber nicht erklären kannst |
| Erklär-mirs | Selbsterklären (Lernen durch Lehren) | vor einer mündlichen Prüfung; wenn du prüfen willst, ob dein Verständnis trägt |
| Prüfungssimulator | Prüfungssimulation mit Zeitdruck | drei bis sieben Tage vor der Prüfung, wenn der Stoff gelesen ist |
| Notfall-Zusammenfasser | Verdichten plus Abrufen | am Abend vor der Prüfung, wenn wenig Zeit bleibt |
| Vorlage | — | wenn du einen eigenen Ablauf baust |

Dazu kommt der **Kursbegleiter** `kurs` («starte kurs»). Er ist kein Lernablauf,
sondern führt dich an jedem Kurstag durch das Ablaufblatt unter `kurs/`.

Der **Name im Befehl** ist immer der Ordnername unter `skills/`: alles klein
geschrieben, Umlaute ausgeschrieben (ü wird zu ue). Bei «Prüfungssimulator» steht
also an der Stelle des «ü» ein «ue», ebenso bei den anderen Namen. Die Vorlage
startest du nicht, du kopierst sie (siehe unten).

Jeder Ablauf endet gleich: mit drei Kontrollfragen und einem Eintrag im
Lernjournal unter `lernjournal/JJJJ-MM-TT_<name>.md` nach der Form von
`lernjournal/_vorlage.md`.

## Einen Ablauf starten

Schreibe im Chat deines Agenten:

- `starte abfrager` — der Agent liest `skills/abfrager/SKILL.md` und beginnt mit der Vorbereitung
- `zeige abläufe` — der Agent listet die Ordner unter `skills/` auf
- `starte abfrager zum Thema Zinsrechnung` — Start mit einem Thema, die Vorbereitung wird kürzer

Der Ablauf fragt zuerst nach Fach und Thema und schaut in `mein-stoff/` nach deinen
Unterlagen. Lege deine Skripte dort ab, sonst arbeitet der Agent nur mit dem, was du
ihm erzählst.

## Einen Ablauf anpassen

1. **Ordner kopieren.** `skills/_vorlage` kopieren und den Ordner umbenennen, zum
   Beispiel `skills/mein-abfrager`.
2. **`name:` ändern.** Im Frontmatter der `SKILL.md` muss `name:` genau dem
   Ordnernamen entsprechen, sonst findet der Agent den Ablauf nicht.
3. **Abschnitte ändern.** Die sieben `##`-Überschriften bleiben in dieser
   Reihenfolge: Didaktischer Grundsatz, Wann benutzen, Vorbereitung, Ablauf,
   Regeln für den Tutor, Abschluss, Anpassen.
4. **Mit dem Agenten testen.** `starte mein-abfrager` ausführen, einmal als
   Lernende, einmal als Lehrperson gegenlesen. Merke dir, wo der Agent ausweicht
   oder zu viel schreibt — das ist die Stelle, die unklar formuliert ist.
5. **Committen.** `git add -A` und `git commit -m "eigener Ablauf: …"`. So kannst du
   jederzeit zurück (`git restore`), wenn ein Umbau schiefgeht.

Schreibe Anweisungen an den Agenten, nicht über ihn: «Frage zuerst nach dem Thema.
Warte auf die Antwort.» Kurze Sätze, eine Handlung pro Schritt. Ein Ablauf ist im
Kern ein langer, guter Prompt — dieselben Kriterien gelten.

## Drei Fragen, um einen eigenen Ablauf zu prüfen

1. **Grundsatz:** Steht ein benannter Grundsatz oben, und folgt der Ablauf ihm
   wirklich? Wenn der Ablauf etwas anderes tut als der Grundsatz sagt, stimmt einer
   von beiden nicht.
2. **Eine Frage auf einmal:** Kann der Agent den Ablauf befolgen, ohne zwei Dinge
   gleichzeitig zu fragen? Streiche jede Frage, die sich mit der nächsten
   überschneidet.
3. **Abschluss:** Endet er mit drei Kontrollfragen, die die Lernenden selbst
   beantworten, und mit dem Lernjournal-Eintrag? Ein Ablauf ohne Abruf am Schluss
   ist eine Erklärung, kein Lernablauf.

## Grenzen

- Der Agent ist Tutor, nicht Ghostwriter. Er schreibt keine Aufträge, Vorträge oder
  Prüfungsantworten, die du als eigene abgibst.
- Er arbeitet nur im Kursordner. `mein-stoff/` bleibt lokal und ist nicht
  versioniert.
- Das Lernjournal ist versioniert: keine Namen anderer Personen, keine Noten,
  nichts Privates.
