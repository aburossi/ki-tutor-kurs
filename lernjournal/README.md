# Lernjournal

Hier steht, was du in jeder Sitzung gelernt hast. Eine Datei pro Sitzung.

## Wozu

Das Journal macht dein Lernen sichtbar. Nach drei Wochen siehst du, was schon sitzt
und was noch nicht. Im Kurs zeigst du damit deinen Fortschritt, statt nur zu sagen
«ich habe geübt».

Zweitens ist es ehrlich: Die Zeile «wie viel hat die KI gemacht und wie viel ich»
zwingt dich, hinzuschauen. Der Tutor erklärt, du denkst.

## Wer schreibt

Der Agent führt das Journal mit dir, nach `skills/journal/SKILL.md`. Im Kurstag
trägt er nach jedem Schritt eine kurze Zeile ein (was schwierig war, wie du es gelöst
hast) und zeigt sie dir im Chat. Am Schluss ergänzt ihr Kontrollfragen und nächsten
Schritt, und mit `/journal review` prüft er alles vor der Abgabe. Grössere Einträge
zeigt er dir vorher, du sagst OK oder änderst sie. Er schreibt nur auf, was du
gesagt hast, und erfindet nichts dazu.

Das Journal hat drei Aufgaben: Es ist dein Lernprotokoll, es ist das Gedächtnis des
Tutors (er liest es beim nächsten Start und weiss, wo du stehst), und es ist deine
Abgabe: Mit jedem `git push` sieht die Lehrperson in Classroom 50, wie du
vorankommst. Mit `/journal chat` kannst du zusätzlich einen Chatverlauf als Beleg
in `lernjournal/chats/` ablegen.

Du liest ihn danach und ergänzt, was fehlt: eine eigene Notiz, ein Beispiel, eine
Frage für die nächste Sitzung. Das Journal gehört dir, nicht dem Tutor.

## Dateiname

```
JJJJ-MM-TT_<ablauf>.md
```

Beispiel: `2026-11-17_abfrager.md`. Datum im Format Jahr-Monat-Tag, danach der Name
des Ablaufs. Zwei Sitzungen am gleichen Tag mit dem gleichen Ablauf: häng `-2` an.

Die Vorlage ist `lernjournal/_vorlage.md`. Kopiere sie, fülle sie aus, lass sie
unverändert stehen.

## Regel: keine Daten anderer

Das Journal ist versioniert. Mit `git push` landet es in deinem privaten Repo, dort liest es die Lehrperson.
Darum gilt ohne Ausnahme:

- keine Namen anderer Personen (auch nicht von Lehrpersonen oder Mitschülern)
- keine Noten, keine Punktzahlen aus echten Prüfungen
- nichts Privates: keine Adressen, Telefonnummern, Krankheiten, Familienangaben
- der Stoff selbst ist in Ordnung: Thema, Fach, eigene Gedanken, eigene Fehler
