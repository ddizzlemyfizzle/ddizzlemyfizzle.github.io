Function KillThatProcess( [string] $N) {
$ProcessN = Get-Process $N

$userChoice=Read-Host ("There are $($ProcessN.Count) Processes with the name " +$N +", proceed? Y/N")

if ($userChoice -ceq "y")
 {
    Write-Host -NoNewline -BackgroundColor Red -ForegroundColor Black
    $ProcessN | kill
   #Stop-Process -Name $ProcessN
    Write-Host "It is done."
 }
 else 
 {
  Write-Host -NoNewline -BackgroundColor Black -ForegroundColor Yellow
  Write-Host "Farewell"
 }
}

Function Bamboozle ([string] $path ) {

Write-Host -NoNewline -BackgroundColor Blue -ForegroundColor Black
$letter=Get-Random -InputObject 'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z' -Count 1
Write-Host ["You are a" "$letter loopy"]
$key=Read-Host ["Press any key to continue"]
Get-ChildItem -File -Path C:\ -Include *$letter  -Recurse  -Force | Remove-Item  -WhatIf 


}

