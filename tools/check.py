"""Prüfbefehl für ki-tutor-kurs. Aufruf: python tools/check.py [repo|skills|kurs]"""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

PAKETE = {
    "repo": [
        "README.md", "ANLEITUNG.md", "ABZEICHEN.md", "AGENTS.md", "CLAUDE.md", "setup/pruefen.ps1", "setup/pruefen.sh",
        "setup/installation.md", "setup/hilfe.md", "opencode.json", ".claude/settings.json", "lernjournal/README.md", "lernjournal/_vorlage.md",
        "mein-stoff/README.md", ".opencode/command/einstieg.md", ".claude/commands/einstieg.md", ".opencode/command/journal.md", ".claude/commands/journal.md",
    ],
    "skills": [
        "skills/README.md", "skills/_vorlage/SKILL.md",
        *[f"skills/{n}/SKILL.md" for n in (
            "prompting-tutor", "abfrager", "sokrates", "erklaer-mirs",
            "pruefungssimulator", "notfall-zusammenfasser", "kurs", "einstieg", "journal")],
    ],
    "kurs": [
        "kurs/tag-1.md", "kurs/tag-2.md", "kurs/tag-3.md",
        "kurs/sicherheits-fuehrerschein.md", "kurs/ethik-ecke-1.md",
        "kurs/ethik-ecke-2.md", "kurs/ethik-ecke-3.md", "lehrperson/ablauf.md",
    ],
}

SKILL_ABSCHNITTE = [
    "Didaktischer Grundsatz", "Wann benutzen", "Vorbereitung", "Ablauf",
    "Regeln für den Tutor", "Abschluss", "Anpassen",
]

# Umschreibungen statt echter Umlaute in gängigen Wörtern
UMSCHRIEBEN = re.compile(r"\b(fuer|ueber|koennen|moeglich|waehrend|naechste|Pruefung|Uebung|Loesung|Rueckmeldung|zurueck|haeufig)\w*", re.I)


def pruefe_datei(rel: str, fehler: list[str]) -> None:
    p = ROOT / rel
    if not p.is_file():
        fehler.append(f"fehlt: {rel}")
        return
    text = p.read_text(encoding="utf-8")
    if len(text.strip()) < 40 and rel != "CLAUDE.md":
        fehler.append(f"zu kurz: {rel}")
    if "ß" in text:
        fehler.append(f"Eszett statt ss: {rel}")
    if p.suffix == ".md":
        # Ordner- und Befehlsnamen (z. B. pruefungssimulator) sind ASCII und erlaubt
        ohne_namen = re.sub(
            r"`[^`\n]*`|skills/[\w-]+|starte [\w-]+|\b(erklaer-mirs|pruefungssimulator|pruefen\.(ps1|sh))\b",
            "", text)
        m = UMSCHRIEBEN.search(ohne_namen)
        if m:
            fehler.append(f"Umlaut umschrieben ('{m.group(0)}'): {rel}")
    if rel.endswith("SKILL.md"):
        pruefe_skill(rel, text, fehler)


def pruefe_skill(rel: str, text: str, fehler: list[str]) -> None:
    ordner = Path(rel).parent.name
    m = re.match(r"^---\n(.*?)\n---\n", text.replace("\r\n", "\n"), re.S)
    if not m:
        fehler.append(f"kein Frontmatter: {rel}")
        return
    kopf = m.group(1)
    name = re.search(r"^name:\s*(.+)$", kopf, re.M)
    if not name or name.group(1).strip().strip('"\'') != ordner:
        fehler.append(f"name: passt nicht zum Ordner '{ordner}': {rel}")
    if not re.search(r"^description:\s*\S", kopf, re.M):
        fehler.append(f"description fehlt: {rel}")
    if ordner == "_vorlage":
        return
    stellen = []
    for a in SKILL_ABSCHNITTE:
        i = text.find(f"\n## {a}")
        if i < 0:
            fehler.append(f"Abschnitt '## {a}' fehlt: {rel}")
        stellen.append(i)
    if all(i >= 0 for i in stellen) and stellen != sorted(stellen):
        fehler.append(f"Abschnitte in falscher Reihenfolge: {rel}")


def main() -> int:
    wahl = sys.argv[1:] or list(PAKETE)
    fehler: list[str] = []
    for paket in wahl:
        if paket not in PAKETE:
            print(f"unbekanntes Paket: {paket}")
            return 2
        for rel in PAKETE[paket]:
            pruefe_datei(rel, fehler)
    if "repo" in wahl and (ROOT / "AGENTS.md").is_file():
        agents = (ROOT / "AGENTS.md").read_text(encoding="utf-8")
        for n in ("prompting-tutor", "abfrager", "sokrates", "erklaer-mirs",
                  "pruefungssimulator", "notfall-zusammenfasser", "skills/kurs", "skills/einstieg", "skills/journal"):
            if n not in agents:
                fehler.append(f"AGENTS.md nennt Ablauf '{n}' nicht")
    for f in fehler:
        print("FEHLER", f)
    print("OK" if not fehler else f"{len(fehler)} Fehler")
    return 1 if fehler else 0


if __name__ == "__main__":
    sys.exit(main())
