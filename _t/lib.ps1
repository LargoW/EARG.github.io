function Read-Raw($p){ $b=[IO.File]::ReadAllBytes($p); $bom=($b.Length -ge 3 -and $b[0] -eq 0xEF -and $b[1] -eq 0xBB -and $b[2] -eq 0xBF); $t=[Text.Encoding]::UTF8.GetString($b); if($bom){$t=$t.Substring(1)}; @{t=$t;bom=$bom} }
function Write-Raw($p,$t,$bom){ [IO.File]::WriteAllText($p,$t,(New-Object Text.UTF8Encoding($bom))) }
function Rep($p,$a,$b,$expect=1){ $r=Read-Raw $p; $n=$r.t.Split([string[]]@($a),[StringSplitOptions]::None).Count-1; if($n -ne $expect){ "WARN $p '$a' count=$n (expected $expect)"; return }; Write-Raw $p $r.t.Replace($a,$b) $r.bom; "ok $n $p : $a" }
