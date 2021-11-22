#Games script
$PSScriptRoot\Games\Games.ps1

#Util script
$PSScriptRoot\Utils\Utils.ps1

#Pro script
$PSScriptRoot\Utils\Pro.ps1

#Bapt script
$PSScriptRoot\Utils\Bapt.ps1

#Uninstal shit
$PSScriptRoot\Uninstall\Uninstal.ps1

$Drivers = "0"

while ($Drivers -ne "y" -and $Drivers -ne "n") {
    $Drivers = Read-Host "Installation Drivers CPU et GPU ? (y/n) "
    if ($Drivers -eq "y") {
        $PSScriptRoot\Drivers.ps1
    }
}
