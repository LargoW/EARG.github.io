. .\_t\lib.ps1
$cnt=0
foreach($f in Get-ChildItem lists_de -Recurse -Filter *.json){ $r=Read-Raw $f.FullName; $t=$r.t
 $n=[regex]::Replace($t,'("name": ")0[-–]1 ([^"]*")',{param($m) $rest=$m.Groups[2].Value; $rest=$rest -replace '^Spacecraft"','Raumschiff"' -replace '^Orbital Support"','Orbitale Unterstützung"'; $m.Groups[1].Value+'0–1 '+$rest})
 if($n -ne $t){ Write-Raw $f.FullName $n $r.bom; $cnt++ } }
"files $cnt"
