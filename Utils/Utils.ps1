$utils = "0"

while ($utils -ne "y" -and $utils -ne "n") {
    $utils = Read-Host "Installation des logiciels indispensables à tout PC? (y/n) "
    if ($utils -eq "y") {
        foreach ($line in Get-Content $PSSCriptRoot\Utils.txt) {
            if ($line.contains("#")) {
                continue
            }
            winget install --id $line -e          
        }
    }
}
