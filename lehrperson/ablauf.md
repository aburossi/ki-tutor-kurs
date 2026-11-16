# Ablauf für die Lehrperson

Freifachkurs KI, Klasse 4FF26c (3. und 4. Lehrjahr, alle Berufe), 10 bis 14 Lernende, drei Kurstage zu je 90 Minuten (2 Lektionen). Probelauf für einen Kurs von 4 × 4 Lektionen im nächsten Jahr. Die Zeiten sind deshalb Messgrössen und keine Vorgaben: Wenn eine Phase regelmässig überzieht, gehört das in die Messpunkte.

Die Ablaufblätter der Lernenden liegen in `kurs/` (`tag-1.md`, `tag-2.md`, `tag-3.md`). Sie sind bewusst knapp gehalten. Alles, was Sie zum Führen brauchen, steht hier.

## Vorher bereitstellen

**Vor Kurstag 1:**

- Einladungen in die Organisation `freifach-ki` an die bbw-Adressen (Classroom 50, Roster → «Add member»), mindestens zwei Tage vorher. Dazu der Link `ANLEITUNG.md`. Wer kein GitHub-Konto hat, legt es beim Annehmen an.
- Die Aufforderung, den eigenen Agenten (OpenCode, Claude Code oder Codex) installiert und einmal gestartet zu haben. Wer das nicht hat, kommt 15 Minuten früher.
- Ein Thema aus dem eigenen Berufsstoff, das bis zur nächsten Prüfung wirklich gekonnt sein muss. Wer keines findet, bekommt von Ihnen eines genannt.
- Ein Steckdosenverteiler pro Tischgruppe. Akku leeren ist der häufigste Grund für Ausfälle.

**Vor Kurstag 2:**

- Nur wenn Sie seit dem letzten Kurstag etwas an der Vorlage geändert haben: die fünf Befehle zum Auffrischen (`setup/hilfe.md`, Abschnitt 6) an die Wand. Sonst entfällt der Schritt. Gilt auch vor Kurstag 3.

- Erinnerung: Unterlagen als Datei mitbringen, der Ordner `mein-stoff/` ist nicht im Git.

**Vor Kurstag 3:**

- Rückmeldebogen für den Partnertest (drei Sätze: was war klar, wo bin ich hängen geblieben, was würde ich ändern) und ein Blatt für die Kursrückmeldung.
- Entscheid, wie die Kurzvorstellung getaktet wird. Zwei Minuten pro Person sind bei 14 Personen 28 Minuten. Wenn alle vortragen, kürzen Sie den Partnertest, nicht die Vorstellung.
- Die eigenen Regeln der Schule zur KI-Nutzung, falls es sie schriftlich gibt. Für Ethik-Ecke 3 brauchen Sie nichts vorzulesen, aber Sie sollten wissen, was im eigenen Haus gilt.

**Abzeichen:** Den Stand sehen Sie nach dem Push in jedem Repo in `ABZEICHEN.md`. Er dient der Orientierung, nicht der Bewertung.

**Immer bereit:** `python tools/check.py` einmal laufen lassen, bevor die Lernenden kommen. Es prüft die Dateien des Repos, nicht die Rechner.

## Tag 1: Nutzen und Öffnen

Ziel: Repo läuft, Sicherheits-Stationen ausprobiert, `prompting-tutor` einmal am eigenen Stoff benutzt.

| Zeit | Phase | Was die Lehrperson tut | Was die Lernenden tun | Material |
| --- | --- | --- | --- | --- |
| 0–5 | Ankommen | Begrüssen, Ziel des Tages an die Wand schreiben, keine Erklärungen zum Setup | Hinsetzen, Terminal öffnen, Ziel lesen | Beamer oder Wandtafel, `kurs/tag-1.md` |
| 5–15 | Repo holen | Herumgehen, nur bei Klon-Fehlern helfen, Adresse an die Wand | Aufgabe annehmen, privates Repo klonen, Remote `vorlage` eintragen, «starte kurs» | `ANLEITUNG.md`, WLAN |
| 15–25 | Setup prüfen | Sammelstelle für Fehlermeldungen, häufige Fälle aus `setup/installation.md` bereithalten | `pruefen.ps1` bzw. `pruefen.sh` ausführen | `setup/installation.md` |
| 25–40 | Sicherheits-Führerschein | Herumgehen, nichts abnehmen. Wer mag: Station 3 (Sabotage und Rettung) einmal am Beamer zeigen | Vier Stationen mit dem Agenten, Fragen am Schluss, Abzeichen abhaken | `kurs/sicherheits-fuehrerschein.md` |
| 40–45 | Überblick | «zeige abläufe» einmal im Plenum zeigen | Selbst ausführen, Namen der Abläufe notieren | Beamer |
| 45–65 | Üben mit `prompting-tutor` | Nicht eingreifen, nur beobachten; zwei oder drei Sitzungen mithören | «starte prompting-tutor» am eigenen Thema | Eigene Unterlagen |
| 65–70 | Ablauf lesen | Hinweis: zwei Stellen notieren, die man ändern würde | `skills/prompting-tutor/SKILL.md` lesen | Repo |
| 70–75 | Pause | Pause ansagen, Bildschirme wirklich aus | Aufstehen | — |
| 75–85 | Ethik-Ecke 1 | Input in zwei Minuten, Diskussion zu zweit, Abstimmung per Handzeichen | Lesen, diskutieren, abstimmen | `kurs/ethik-ecke-1.md` |
| 85–90 | Abschluss | Auf Tag 2 verweisen, an Unterlagen erinnern | Lernjournal-Eintrag schreiben | `lernjournal/_vorlage.md` |

## Tag 2: Bauen

Ziel: ein angepasster oder eigener Ablauf, mindestens eine echte Lern-Sitzung damit.

| Zeit | Phase | Was die Lehrperson tut | Was die Lernenden tun | Material |
| --- | --- | --- | --- | --- |
| 0–5 | Ankommen | Ziel nennen, die sechs Lernabläufe an die Wand schreiben | Entscheiden, welchen Ablauf sie anpassen | `kurs/tag-2.md`, `skills/README.md` |
| 5–10 | Stand sichern | `git add -A` und `git commit` einmal im Plenum zeigen | Commit machen, `git log --oneline` prüfen | Repo |
| 10–15 | Stoff ablegen | Datenschutz-Regel in einem Satz wiederholen: keine Namen, keine Noten, keine Fotos von Personen | Unterlagen nach `mein-stoff/<thema>/` kopieren | Eigene Unterlagen |
| 15–45 | Bauen | Rundgang, Fragen sammeln, nach 15 Minuten einen Zwischenstand ansagen | Ablauf kopieren und anpassen oder mit `skills/_vorlage/` neu bauen | `skills/_vorlage/SKILL.md` |
| 45–50 | Pause | Pause ansagen | Aufstehen | — |
| 50–70 | Damit lernen | Darauf achten, dass gebaut und nicht geschraubt wird; wer nur schraubt, wird auf das Lernen verwiesen | Eine ganze Sitzung mit dem eigenen Ablauf durchspielen | Eigener Ablauf |
| 70–75 | Nachziehen | Erinnern: erst ändern, dann committen | Änderungen nachziehen, `git commit -m "Ablauf angepasst"` | Repo |
| 75–85 | Ethik-Ecke 2 | Input, Diskussion zu zweit, Abstimmung; bei Option A nachfragen, wem die Skripte gehören | Diskutieren, abstimmen | `kurs/ethik-ecke-2.md` |
| 85–90 | Abschluss | Auftrag für Tag 3 nennen: zweites Fach vorbereiten oder Partnertest | Journal schreiben, zweites Thema wählen | `lernjournal/_vorlage.md` |

## Tag 3: Übertragen und Abschluss

Ziel: Ablauf funktioniert auf einem zweiten Fach oder ist getestet, zwei Minuten vorstellen, Rückmeldung geben.

| Zeit | Phase | Was die Lehrperson tut | Was die Lernenden tun | Material |
| --- | --- | --- | --- | --- |
| 0–5 | Ankommen | Ziel und Entscheid nennen: übertragen oder Partnertest; Paare einteilen | Weg wählen, Paare bilden | `kurs/tag-3.md` |
| 5–10 | Stand sichern | Auf die Commit-Kette hinweisen | `git commit`, `git log --oneline` | Repo |
| 10–25 | Übertragen oder weiterbauen | Fachabhängige Stellen im SKILL.md ansprechen, nicht selbst ändern | Übertragen oder Lücke schliessen | Eigener Ablauf, zweite Unterlagen |
| 25–45 | Partnertest | Zeit ansagen, nach 15 Minuten Wechsel, Rückmeldung schriftlich einfordern | Fremden Ablauf testen, drei Sätze Rückmeldung schreiben | Rückmeldebogen |
| 45–50 | Pause | Pause ansagen | Aufstehen | — |
| 50–75 | Kurzvorstellung | Stoppuhr führen, bei zwei Minuten unterbrechen, eine Zuhörerfrage zulassen | Zwei Minuten vorstellen, eine Frage pro Person notieren | Stoppuhr |
| 75–85 | Ethik-Ecke 3 | Keine Schulregeln behaupten, auf die eigene Lehrperson verweisen; Option C als vernünftige Wahl benennen | Diskutieren, abstimmen | `kurs/ethik-ecke-3.md` |
| 85–90 | Kursrückmeldung | Bogen austeilen, einsammeln, letzten Commit ansagen | Bogen ausfüllen, `git commit -m "Abschluss"` | Rückmeldebogen |

## Wenn etwas nicht klappt: weiterarbeiten

Der Kurs hängt an keinem einzelnen technischen Schritt. Lieber improvisieren als warten.

| Was hakt | Weiterarbeiten so |
| --- | --- |
| Einladung oder Classroom 50 klappt nicht | Öffentliche Vorlage klonen: `git clone https://github.com/aburossi/ki-tutor-kurs.git`. Damit läuft alles ausser dem Push. Das private Repo später nachholen und die eigenen Dateien hinüberkopieren. |
| Klonen des privaten Repos scheitert (Mac, Anmeldung) | Wie oben: öffentliche Vorlage klonen, weiterarbeiten. Anmeldung in einer ruhigen Minute mit `setup/hilfe.md`, Abschnitt 1. |
| `git push` scheitert | Lokal committen genügt fürs Weiterarbeiten. Push am nächsten Kurstag oder zu Hause nachholen. Notfalls den Ordner (ohne `mein-stoff/`) als Zip abgeben. |
| Kein Agent auf dem Gerät | Zu zweit an einem Gerät arbeiten. |
| «starte kurs» reagiert nicht wie erwartet | Das Ablaufblatt `kurs/tag-N.md` direkt lesen und von Hand durchgehen; es ist für Menschen geschrieben. |
| Sicherheits-Führerschein dauert zu lang | Abbrechen und mit `prompting-tutor` weiter. Station 2 und 3 reichen, der Rest geht später. |

## Typische Stolpersteine

- **Klonen scheitert am Netzzugang.** Schulnetze blockieren manchmal Git über SSH. Nehmen Sie die HTTPS-Adresse und sagen Sie das vorher.
- **Agent startet im falschen Ordner.** Der Agent liest `AGENTS.md` nur, wenn er aus dem Kursordner gestartet wurde. Symptom: «zeige abläufe» liefert nichts. Antwort: `cd` in den Kursordner, neu starten.
- **Nachfrage-Modus bleibt an.** Wer sich sicher fühlt, aber im Nachfrage-Modus weiterarbeitet, verliert Zeit an Klicks. Beim Rundgang sagen, dass Umstellen erlaubt ist.
- **`git reset --hard` ohne Commit.** Der häufigste echte Datenverlust im Kurs. Vor der Übung in Aufgabe 4 nochmals laut sagen: alles seit diesem Stand ist weg.
- **Unterlagen im Git.** `mein-stoff/` ist nur über `.gitignore` geschützt. Wer die Datei löscht oder `git add -f` benutzt, hat fremde Skripte in seinem Repo auf GitHub. Beim Commit kurz `git status` mitlesen.
- **Zu viel Bauen, zu wenig Lernen.** An Tag 2 kippt die Gruppe gern ins Basteln. Die 20 Minuten Lernen sind der Kern des Tages, nicht die Anpassung.
- **Kurzvorstellung überzieht.** Bei 14 Personen ist die Vorstellung der längste Block. Wer nicht unterbricht, verliert die Ethik-Ecke.
- **Ein Rechner ohne Agent.** Wer an Tag 1 keinen lauffähigen Agenten hat, arbeitet zu zweit mit. Nicht am Setup eines einzelnen Rechners die Gruppe aufhalten.

## Messpunkte für den 4 × 4-Kurs

Nach jedem Kurstag ausfüllen, direkt danach, solange die Erinnerung frisch ist. Die Zahlen entscheiden, wie die 4 × 4-Lektionen im nächsten Jahr aufgeteilt werden. Leere Zellen sind erlaubt, geschätzte Zahlen sind besser als keine.

### Tag 1

| Messpunkt | Wert | Notiz |
| --- | --- | --- |
| Anzahl Lernende |  |  |
| Setup in 10 Minuten fertig (Anzahl) |  |  |
| Setup erst nach Hilfe fertig (Anzahl) |  |  |
| Ohne lauffähigen Agenten (Anzahl) |  |  |
| Sicherheits-Stationen durchgespielt (Anzahl) |  |  |
| Abzeichen am Ende von Tag 1 (Median) |  |  |
| Phase, die zu lang war |  |  |
| Phase, die zu kurz war |  |  |
| Zeit für die Übungssitzung, effektiv (Minuten) |  |  |
| Bemerkungen zur Ethik-Ecke |  |  |

### Tag 2

| Messpunkt | Wert | Notiz |
| --- | --- | --- |
| Anwesend (Anzahl) |  |  |
| Ablauf angepasst (Anzahl) |  |  |
| Eigener Ablauf aus `skills/_vorlage/` (Anzahl) |  |  |
| Kein Ablauf fertig (Anzahl) |  |  |
| Echte Lern-Sitzung durchgespielt (Anzahl) |  |  |
| Zeit bis zum ersten laufenden Ablauf (Minuten, Median) |  |  |
| Schwierigkeit empfunden (1 leicht bis 5 schwer, Median) |  |  |
| Phase, die zu lang war |  |  |
| Phase, die zu kurz war |  |  |
| Bemerkungen zur Ethik-Ecke |  |  |

### Tag 3

| Messpunkt | Wert | Notiz |
| --- | --- | --- |
| Anwesend (Anzahl) |  |  |
| Auf zweites Fach übertragen (Anzahl) |  |  |
| Nur Partnertest (Anzahl) |  |  |
| Partnertest fand statt (Anzahl Paare) |  |  |
| Kurzvorstellung im Zeitlimit (Anzahl) |  |  |
| Durchschnittliche Dauer der Vorstellung (Minuten) |  |  |
| Abschlussprojekt vollständig nach Tabelle (Anzahl) |  |  |
| Offene Kriterien, am häufigsten (Kriterium) |  |  |
| Phase, die zu lang war |  |  |
| Phase, die zu kurz war |  |  |

### Auswertung nach dem Probelauf

Drei Fragen, schriftlich, eine halbe Seite:

1. Welche Phase hat in allen drei Tagen überzogen, und um wie viele Minuten?
2. Welcher Schritt liesse sich in den 4 × 4-Lektionen auslagern, ohne dass der Kern verloren geht (Setup, Führerschein, Lesen)?
3. Was hat gefehlt, das niemand geplant hatte?

## Fragen für die Kursrückmeldung

Sechs Fragen, anonym, Papier oder Abfrage am Ende von Tag 3. Vier Skalenfragen, zwei offene.

1. Ich weiss jetzt, wie ich meinen Agenten für ein echtes Prüfungsthema einsetze. (trifft nicht zu – trifft zu, 1 bis 5)
2. Der Sicherheits-Führerschein war für mich verständlich und machbar. (1 bis 5)
3. Ich habe an den drei Tagen etwas gelernt, das ich ohne den Kurs nicht gelernt hätte. (1 bis 5)
4. Ich traue mir zu, den Ablauf ohne Hilfe weiterzubauen. (1 bis 5)
5. Was war die wichtigste Sache, die du mitnimmst? (zwei Sätze)
6. Was hat dir Zeit geraubt oder genervt? Was soll im nächsten Kurs anders sein? (zwei Sätze)

Auswertung: Mittelwert der vier Skalenfragen pro Tag und insgesamt, die offenen Antworten wörtlich sammeln, ohne Namen. Die Rückmeldung gehört in die Auswertung der Messpunkte, nicht in eine Note.
