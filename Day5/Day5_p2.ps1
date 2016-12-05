
$input = 'cxdnnyjw'
#$input='abc'

[char[]]$pwFound = 'xxxxxxxx'

$hasher = 0
$spot = 0

while ($pwFound -match 'x') {
        $modinput = $input + [string]$hasher
        $curHash = [System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes($modinput)))
        $curhash = $curhash.Replace("-",'')

        if (($curHash -match '^00000')) {
            $spot = $curHash[5]
            if('01234567' -match $spot){
                Write-Host "Hi"
                $ind=[convert]::ToInt32($spot)
                $pwFound[$ind]
                if($pwFound[$ind] -match 'x'){
                Write-Host "Hi Again"
                    $pwFound[$ind] = $curHash[6]
                }
            }
#            $pwFound
        }
        [int]$hasher+=1
}
cls
$pwFound

