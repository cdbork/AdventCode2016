
$input = 'cxdnnyjw'
#$input='abc'

$pwFound = $null

$hasher = 0

while ($pwFound.Length -lt 8) {
        $modinput = $input + [string]$hasher
        $curHash = [System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes($modinput)))
        $curhash = $curhash.Replace("-",'')

        if (($curHash -match '^00000')) {
            $pwFound += $curHash[5]
            $pwFound
        }
        [int]$hasher+=1
}
$pwFound

