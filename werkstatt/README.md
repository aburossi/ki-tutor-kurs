# werkstatt

Hier arbeitet der Agent für dich: Zwischendateien, die beim Lernen entstehen.
Zum Beispiel:

- eine PDF-Seite als Bild, weil das PDF nur ein Scan ist
- der Text aus einer Präsentation oder einem PDF, damit der Tutor ihn schneller findet
- ein kleines Hilfsskript zum Umwandeln, mit Werkzeugen, die schon auf deinem Rechner sind
- Notizen des Tutors zu deinen Unterlagen (Themen, Begriffe, Aufgabenarten)

## Regeln

- Der Agent darf hier Dateien anlegen, überschreiben und löschen. Er sagt dir in
  einem Satz, was er tut, fragt aber nicht jedes Mal.
- Zwischendateien legt er nur hier ab, nie in einem Temp-Ordner ausserhalb des
  Kursordners.
- Installiert wird nichts. Fehlt ein Werkzeug, sagt er es und schlägt einen Weg
  ohne Installation vor, zum Beispiel ein Foto der Seite.
- Dieser Ordner geht nie auf GitHub (`.gitignore`): Was aus Skripten der
  Lehrperson umgewandelt wird, ist genauso geschützt wie das Original.
- Du darfst den Ordner jederzeit leeren. Nur diese README bleibt.
