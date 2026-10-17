. .\_t\lib.ps1
Rep 'lists_de\SM\imperialfists.json' 'Drei Hyperios Sentries' 'Drei Hyperios-Wachgeschütze'
foreach($f in 'AM\amtl','AM\legionesskitariimars','AM\legionesskitariimetalica','SQ\squats'){ $p="lists_de\$f.json"; $r=Read-Raw $p; $t=$r.t.Replace('Kastelan Robots','Kastelan-Roboter'); Write-Raw $p $t $r.bom; "$f done" }
Rep 'lists_de\DM\QT.json' '"(0-1 per army) Oberbefehlshaber"' '"(0–1 pro Armee) Oberbefehlshaber"'
Rep 'lists_de\DM\QT.json' '"(0-1 per army) The Kaban Machine"' '"(0–1 pro Armee) The Kaban Machine"'
Rep 'lists_de\EL\exodites.json' '"Dragon Prince (0-1 per army)"' '"Dragon Prince (0–1 pro Armee)"'
Rep 'lists_de\EL\exodites.json' '"Eternal Drake (0-1 per army)"' '"Eternal Drake (0–1 pro Armee)"'
Rep 'lists_de\EL\exodites.json' '"Wraithgate (0-1 per army)"' '"Wraithgate (0–1 pro Armee)"'
Rep 'lists_de\EL\exodites.json' '(0-1 per raiding party)' '(0–1 pro Raubzug-Trupp)' 2
Rep 'lists_de\IQ\adeptasororitas.json' '"Ordo Hereticus Superior (0-1 per army)"' '"Ordo Hereticus Superior (0–1 pro Armee)"'
Rep 'lists_de\IQ\adeptasororitas.json' '"Living Saint (0-1 per army)"' '"Living Saint (0–1 pro Armee)"'
Rep 'lists_de\SQ\squats.json' '"(0–1 in der Armee) Squat Grand Warlord"' '"(0–1 pro Armee) Squat Grand Warlord"'
Rep 'lists_de\DE\kabaloftheblackheart.json' '(0–1 in der Armee)' '(0–1 pro Armee)'
Rep 'lists_de\DE\masqueofthemidnightsorrow.json' '(0–1 in der Armee)' '(0–1 pro Armee)'
