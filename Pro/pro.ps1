$pro = "0"

while ($pro -ne "y" -and $pro -ne "n") {
    $pro = Read-Host "Installation des logiciel pro? (y/n) "
    if ($pro -eq "y") {
        foreach ($line in Get-Content $PSSCriptRoot\pro.txt) {
            if ($line.contains("#")) {
                continue
            }
            winget install --id $line -e        
        }
    }
}
