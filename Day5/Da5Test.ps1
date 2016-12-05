
$input = 'cxdnnyjw'
#$input='abc'

[char[]]$pwFound = 'xxxxxxxx'

$hasher = 0
$spot = 0

      
        $modinput = 'cxdnnyjw123467'
        $curHash = [System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes($modinput)))
        $curhash = $curHash.Replace("-",'')
        $curHash
        $spot = [convert]::ToInt32($curHash[5])
        $spot
            if('01234567' -match $spot){
            Write-Host "Hi"
                if($pwFound[$spot] -match 'x'){
                    Write-Host "Hi Again"
                    $pwFound[$spot] = $curHash[6]
                }
            }
            $pwFound
