$games = "0"

while ($games -ne "y" -and $games -ne "n") {
    $games = Read-Host "Installer les logiciels par défaut de gaming ? (y/n) "
    if ($games -eq "y") {
        foreach ($line in Get-Content $PSSCriptRoot\games.txt) {
            if ($line.contains("#")) {
                continue
            }
            winget install --id $line -e           
        }
    }
}
