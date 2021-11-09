$Bapt = "0"

while ($Bapt -ne "y" -and $Bapt -ne "n") {
    $Bapt = Read-Host "Installation des super programmes par défaut de Baptiste ? (y/n) "
    if ($Bapt -eq "y") {
        foreach ($line in Get-Content $PSSCriptRoot\Bapt.txt) {
            if ($line.contains("#")) {
                continue
            }
            winget install --id $line -e        
        }
    }
}
