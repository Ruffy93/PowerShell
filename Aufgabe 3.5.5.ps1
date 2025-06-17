$produktname = "Tastatur"
$stückpreis = 25.99
$anzahl = 3
$mwstSatz = 0.19  # 19% Mehrwertsteuer
$nettoGesamt = $stückpreis * $anzahl
$mehrwertsteuer = $nettoGesamt * $mwstSatz
$bruttoGesamt = $nettoGesamt + $mehrwertsteuer
Write-Host "Produkt: $produktname"
Write-Host "Anzahl: $anzahl"
Write-Host "Stückpreis: $stückpreis €"
Write-Host "Netto-Gesamt: $nettoGesamt €"
Write-Host "Mehrwertsteuer (19%): $mehrwertsteuer €"
Write-Host "Brutto-Gesamtpreis: $bruttoGesamt €"
Write-Host "===================================="

Write-Host "Aufgabe 2:"

$a = 15
$b = 4
Write-Host "Rechnungen mit den Zahlen: $a und $b"


$addition = $a + $b
Write-Host "Addition: $a + $b = $addition"

$subtraktion = $a - $b
Write-Host "Subtraktion: $a - $b = $subtraktion"

$multiplikation = $a * $b
Write-Host "Multiplikation: $a * $b = $multiplikation"

$division = $a / $b
Write-Host "Division: $a / $b = $division"

$modulo = $a % $b
Write-Host "Modulo: $a % $b = $modulo"