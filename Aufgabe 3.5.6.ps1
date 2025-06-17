
$name = "Rafael"
$alter = 31


$begrüßung = "Hallo, mein Name ist $name."

$vorstellung = "Ich bin $name und ich bin $alter Jahre alt."


$hobby = "In meiner Freizeit spiele ich gerne World of Warcraft und gehe gern zum Sport."


$heutigesDatum = Get-Date -Format "dd.MM.yyyy"

Write-Host "=========================="
Write-host "Begrüßung:"
Write-Host $begrüßung
Write-Host "=========================="
write-host "Vorstellung:"
Write-Host $vorstellung
Write-Host "=========================="
Write-Host "Hobby:"
Write-Host $hobby
Write-Host "=========================="
Write-Host "Aktuelles Datum:"
Write-Host "Heute ist der $heutigesDatum"