. .\_t\lib.ps1
Rep 'lists_de\eldarNavy.json' 'Is equipped with either Orbital Bombardment oder one Pin Point attack (may be chosen at the start of battle)' 'Ist entweder mit Orbitalbombardement oder einem Punktziel-Angriff ausgerüstet (die Auswahl erfolgt zu Beginn der Schlacht)'
Rep 'lists_de\eldarNavy.json' 'Is equipped with either Orbital Bombardment oder two Pin Point attacks (may be chosen at the start of battle)' 'Ist entweder mit Orbitalbombardement oder zwei Präzisionsschüssen ausgerüstet (die Auswahl erfolgt zu Beginn der Schlacht)'
Rep 'lists_de\SM\greyknights.json' '"1 Orbital Support"' '"1 Orbitale Unterstützung"'
foreach($f in Get-ChildItem lists_de -Recurse -Filter *.json){ $r=Read-Raw $f.FullName; $t=$r.t
 $n=$t.Replace('0-1x Orbital Bombardment','0–1x Orbitalbombardement').Replace('Orbital Bombardment','Orbitalbombardement').Replace('0-1x Zwillings Laserkanone','0–1x Zwillings-Laserkanone').Replace('0-1x Schweres Zwillings Bolter','0–1x Zwillings-Schwerbolter').Replace('einer Zwillings Laserkanone oder einem Schweres Zwillings Bolter','einer Zwillings-Laserkanone oder einem Zwillings-Schwerbolter').Replace('Razorbacks mit Schweres Zwillings Bolter','Razorbacks mit Zwillings-Schwerbolter')
 if($n -ne $t){ Write-Raw $f.FullName $n $r.bom; "chg $($f.Name)" } }
