#Games script
.\Games\Games.ps1

#Util script
.\Utils\Utils.ps1

#Pro script
.\Utils\Pro.ps1

#Bapt script
.\Utils\Bapt.ps1

#Uninstal shit
.\Uninstall\Uninstal.ps1

$Drivers = "0"

while ($Drivers -ne "y" -and $Drivers -ne "n") {
    $Drivers = Read-Host "Installation Drivers CPU et GPU ? (y/n) "
    if ($Drivers -eq "y") {
        $PSScriptRoot\Drivers.ps1
    }
}
