param()

# Prüfskript für den Kursordner. Ändert nichts, installiert nichts.
# Aufruf: powershell -ExecutionPolicy Bypass -File setup\pruefen.ps1

$ErrorActionPreference = "Continue"
$anzahlFehlt = 0

function Zeige($status, $text, $hinweis) {
    if ($status) {
        Write-Host ("OK    " + $text) -ForegroundColor Green
    } else {
        Write-Host ("FEHLT " + $text) -ForegroundColor Yellow
        if ($hinweis) { Write-Host ("      Hinweis: " + $hinweis) }
        $script:anzahlFehlt = $script:anzahlFehlt + 1
    }
}

Write-Host "Prüfung des Kursordners"
Write-Host ""

# 1. Git vorhanden
$git = Get-Command git -ErrorAction SilentlyContinue
Zeige ($null -ne $git) "git ist installiert" "Git von git-scm.com installieren, dann das Terminal neu öffnen. Siehe setup/installation.md."

# 2. Name und Mail in der Git-Konfiguration
$name = ""
$mail = ""
if ($git) {
    $name = (git config user.name) 2>$null
    $mail = (git config user.email) 2>$null
}
Zeige (-not [string]::IsNullOrWhiteSpace($name)) "git config user.name ist gesetzt" "Im Terminal: git config --global user.name ""Dein Name"""
Zeige (-not [string]::IsNullOrWhiteSpace($mail)) "git config user.email ist gesetzt" "Im Terminal: git config --global user.email ""du@beispiel.ch"""

# 3. Mindestens ein Agent
$agenten = @()
foreach ($kandidat in @("opencode", "claude", "codex")) {
    if (Get-Command $kandidat -ErrorAction SilentlyContinue) { $agenten += $kandidat }
}
Zeige ($agenten.Count -gt 0) ("mindestens ein Agent gefunden (" + ($agenten -join ", ") + ")") "OpenCode, Claude Code oder Codex installieren. Siehe setup/installation.md."

# 4. Aktueller Ordner ist ein Git-Repo mit AGENTS.md
$inRepo = $false
if ($git) {
    $treffer = (git rev-parse --show-toplevel) 2>$null
    $inRepo = -not [string]::IsNullOrWhiteSpace($treffer)
}
Zeige ($inRepo) "der aktuelle Ordner ist ein Git-Repo" "Im richtigen Ordner sein (cd ki-tutor-kurs) oder git init ausführen."
Zeige (Test-Path -Path "AGENTS.md" -PathType Leaf) "AGENTS.md liegt im Ordner" "Du bist vermutlich im falschen Ordner. Wechsle in den Ordner ki-tutor-kurs."

# 5. mein-stoff/ existiert
Zeige (Test-Path -Path "mein-stoff" -PathType Container) "der Ordner mein-stoff/ existiert" "Ordner von Hand anlegen: mkdir mein-stoff"

Write-Host ""
if ($anzahlFehlt -eq 0) {
    Write-Host "Alles bereit. Starte deinen Agenten und schreibe: starte prompting-tutor" -ForegroundColor Green
} else {
    Write-Host ("Fertig mit " + $anzahlFehlt + " offenen Punkten. Oben steht bei jedem Punkt ein Hinweis.") -ForegroundColor Yellow
    Write-Host "Mehr Hilfe: setup/installation.md"
}
