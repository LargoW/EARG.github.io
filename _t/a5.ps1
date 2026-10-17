. .\_t\lib.ps1
$pairs=@(
 @('ARMS (choose two. Max one 0-1)','ARME (wähle zwei. Höchstens eine 0–1)'),
 @('ARMS (choose two)','ARME (wähle zwei)'),
 @('BELLY (choose one)','BAUCH (wähle eine)'),
 @('BATTLE CAR WEAPONS','SCHLACHTWAGEN-WAFFEN'),
 @('"CARAPACE"','"RÜCKENPANZER"'),
 @('\u0027ED (choose one)','KOPF (wähle eine)'),
 @('''ED (choose one)','KOPF (wähle eine)'),
 @('Tank Hunter Configuration"','Tank-Hunter-Konfiguration"'),
 @('zum Tank Hunter Configuration','auf die Tank-Hunter-Konfiguration'),
 @('Werte alle Warhounds im Verband auf die','Werte alle Warhounds im Verband auf die'),
 @('Standard oder Support Configuration','Standard- oder Support-Konfiguration')
)
foreach($f in Get-ChildItem lists_de -Recurse -Filter *.json){ $r=Read-Raw $f.FullName; $t=$r.t
 foreach($p in $pairs){ $t=$t.Replace($p[0],$p[1]) }
 $t=[regex]::Replace($t,'(>|\\u003e)Tank Hunter Configuration(<|\\u003c)','${1}Tank-Hunter-Konfiguration${2}')
 $t=[regex]::Replace($t,'(>|\\u003e)Standard Configuration(<|\\u003c)','${1}Standard-Konfiguration${2}')
 $t=[regex]::Replace($t,'(>|\\u003e)Support Configuration(<|\\u003c)','${1}Support-Konfiguration${2}')
 $t=[regex]::Replace($t,'(>|\\u003e)Close Assault Configuration(<|\\u003c)','${1}Nahkampf-Konfiguration${2}')
 $t=[regex]::Replace($t,'(>|\\u003e)Battle Weapons(<|\\u003c)','${1}Kampfwaffen${2}')
 $t=[regex]::Replace($t,'(>|\\u003e)Support Weapons(<|\\u003c)','${1}Unterstützungswaffen${2}')
 if($t -ne $r.t){ Write-Raw $f.FullName $t $r.bom; "chg $($f.Name)" } }
