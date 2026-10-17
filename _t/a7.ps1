. .\_t\lib.ps1
foreach($f in Get-ChildItem lists_de -Recurse -Filter *.json){ $r=Read-Raw $f.FullName; $t=$r.t
 $t=$t.Replace('"firepower": "Small Arms','"firepower": "Handfeuerwaffen').Replace('"firepower": "Assault Weapons"','"firepower": "Sturmwaffen"').Replace('"firepower": "Assault Weapon"','"firepower": "Sturmwaffe"')
 if($t -ne $r.t){ Write-Raw $f.FullName $t $r.bom } }
