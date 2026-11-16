# mein-stoff

Hier legst du deinen Schulstoff ab. Der Tutor sucht zuerst in diesem Ordner, bevor
er dich nach dem Thema fragt.

## Was hinein darf

- eigene Notizen aus dem Unterricht
- eigene Zusammenfassungen und Lernkarten
- deine Lernziele für die nächste Prüfung
- Skripte und Unterlagen der Lehrperson, aber nur lokal auf deinem Rechner
- eigene Fehlerlisten: Aufgaben, die du falsch gemacht hast, und warum

## Was nicht hinein darf

- Passwörter, API-Schlüssel, Tokens
- Daten anderer Personen: Namen, Adressen, Noten von Mitschülern
- Prüfungen, die nicht geteilt werden dürfen
- Unterlagen, die eine Lehrperson ausdrücklich nur zur Einsicht abgegeben hat

## Dieser Ordner landet nie auf GitHub

In `.gitignore` steht `mein-stoff/*`, nur diese README ist versioniert. Das hat einen
Grund: Skripte von Lehrpersonen sind urheberrechtlich geschützt. Sie dürfen nicht in
einem öffentlichen Repo oder Fork stehen.

Daraus folgt: Was du hier ablegst, wird nicht mitgesichert. Wenn du deinen Stoff
behalten willst, sichere ihn an einem anderen Ort, zum Beispiel in deinem eigenen
Ordner oder in der Schulcloud.

Prüfen kannst du das mit `git status`. Deine Dateien in `mein-stoff/` dürfen dort
nicht als «zu sichern» auftauchen.
