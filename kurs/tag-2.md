# Tag 2: Bauen

> **Entwurf, noch nicht gültig.** Woche 2 und 3 laufen in eigenen Repos mit eigenem Auftrag in Classroom 50. Dieses Blatt wird dort neu geschrieben: In Woche 2 baust du aus `profil.md` mit dem Agenten deinen eigenen Tutor.

**Ziel des Tages:** Du hast einen der sechs Lernabläufe an deinen eigenen Berufsstoff angepasst oder mit `skills/_vorlage/` einen eigenen gebaut, und du hast damit mindestens einmal wirklich gelernt.

**Gesamtzeit:** 90 Minuten, davon 10 Minuten Ethik-Ecke.

## Vorher bereit

- Dein Repo von Tag 1, geöffnet im Agenten.
- Ein Thema, das du lernen musst, und die dazugehörigen Unterlagen als Datei (PDF, Text, Foto des Skripts).
- Deine Notiz aus Tag 1: welcher Ablauf, welches Fach, was du ändern willst.
- **Nur wenn die Lehrperson es sagt:** Kursdateien auffrischen, bevor du den Agenten startest (`setup/hilfe.md`, Abschnitt 6).
- Erste Nachricht an den Agenten: **«starte kurs»**, dann Tag 2 wählen.
- An Tag 1 gefehlt? Sag es dem Agenten gleich nach «starte kurs». Erst Repo und Prüfskript, dann Tag 2; den Führerschein holst du nach, wenn Zeit bleibt (`setup/hilfe.md`, Abschnitt 5).

## Schritte

- [ ] **0–5 Min: Ankommen und Ziel.** Lies das Ziel oben. Entscheide in einem Satz, was am Ende des Tages fertig sein soll.
- [ ] **5–10 Min: Stand sichern.** Vor jeder Sitzung: `git add -A` und dann `git commit -m "Stand vor Tag 2"`. So kannst du später zurückspringen, wenn etwas kaputtgeht.
- [ ] **10–15 Min: Stoff ablegen.** Kopiere deine Unterlagen nach `mein-stoff/` in einen Unterordner mit deinem Thema. Dieser Ordner ist absichtlich nicht im Git: fremde Skripte gehören nicht auf GitHub, auch nicht in ein privates Repo. Keine Namen von Lehrpersonen, keine Noten, keine Fotos von Mitschülerinnen und Mitschülern.
- [ ] **15–45 Min: Ablauf anpassen oder bauen.** Zwei Wege, wähle einen:
  - **Anpassen:** Kopiere einen der sechs Lernabläufe aus `skills/` in einen neuen Ordner unter `skills/`, zum Beispiel `skills/abfrager-mechanik/` (der Ordner `skills/abfrager/` ist der Abfrager). Der Ordnername ist der Aufrufname: «starte abfrager-mechanik». Ändere den Abschnitt `Anpassen` und die Stellen, die dein Fach betreffen: Fachwörter, Beispiele, was der Tutor fragen soll.
  - **Neu bauen:** Kopiere `skills/_vorlage/SKILL.md` in einen neuen Ordner und fülle alle Abschnitte aus. Ein Ablauf braucht genau einen benannten didaktischen Grundsatz und muss mit Kontrollfragen und einem Lernjournal-Eintrag enden.
  - In beiden Fällen: Kopfzeile (`name:`, `description:`) nicht vergessen. `name:` muss genau wie der Ordner heissen.
- [ ] **45–50 Min: Pause.**
- [ ] **50–70 Min: Damit lernen.** Schreib «starte <dein name>» und arbeite eine ganze Sitzung durch. Lerne, statt zu basteln: Antworten tippen, nachdenken, Fehler machen. Wenn du dauernd am Ablauf herumschraubst, brich ab und notiere die Stelle.
- [ ] **70–75 Min: Nachziehen.** Was beim Lernen gestört hat, änderst du jetzt im SKILL.md. Danach `git add -A` und `git commit -m "Ablauf angepasst"`.
- [ ] **75–85 Min: Ethik-Ecke 2.** `kurs/ethik-ecke-2.md`, 10 Minuten: kurzer Input, Diskussionsfrage, Abstimmung.
- [ ] **85–90 Min: Journal.** Eintrag nach `lernjournal/_vorlage.md`: was du gebaut hast, was beim Lernen geholfen hat, was nicht. Danach sichern und hochladen: `git add -A`, `git commit -m "Kurstag 2"`, `git push`.

## Am Ende des Tages liegt vor

- Die Abzeichen von heute sind in `ABZEICHEN.md` abgehakt.

- Ein eigener Ablauf unter `skills/<dein-name>/SKILL.md`, mit `name:`, `description:` und allen Abschnitten der Vorlage.
- Mindestens eine vollständig durchgespielte Lern-Sitzung mit diesem Ablauf.
- Ein Commit mit dem neuen Stand.
- Ein Eintrag im Lernjournal, der beschreibt, was du geändert hast.

## Wenn du nicht weiterkommst

Anmelden, Push-Fehler, Modus des Agenten, zu spät oder gefehlt: `setup/hilfe.md`.

1. **Der Agent startet deinen Ablauf nicht.** Häufigste Ursache: `name:` im Kopf ist nicht gleich dem Ordnernamen. Prüfe beides Zeichen für Zeichen. Zweite Ursache: der Ordner liegt nicht direkt unter `skills/`, sondern eine Ebene zu tief.
2. **Der Ablauf fühlt sich falsch an, du weisst aber nicht warum.** Frag den Agenten: «Lies skills/<dein-name>/SKILL.md und sage mir, welche Stelle gegen den didaktischen Grundsatz verstösst.» Vergleiche mit dem Original, das du kopiert hast — was hast du beim Kopieren verloren?
3. **Du hast etwas kaputt gemacht und findest den Fehler nicht.** Erst beruhigen: es ist gesichert. `git log --oneline` zeigt deine Stände, `git restore <datei>` holt eine einzelne Datei zurück. Wenn der ganze Ordner wirr ist: `git reset --hard <commit>` mit dem Stand von vorhin. Das löscht alle Änderungen seither, also vorher fragen, ob du sie wirklich aufgeben willst.

## Schneller fertig?

Nimm einen zweiten Ablauf dazu und prüfe, ob beide mit demselben Stoff funktionieren. Notiere im Journal, welcher besser passt und warum. Das ist die halbe Vorbereitung für Tag 3, wo du auf ein zweites Fach überträgst.
