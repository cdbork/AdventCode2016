

function ArraySearch ([string[]]$arraytoSearch, [string]$findThis) {

       foreach ($thing in $arraytoSearch){
        if ($thing -eq $findThis) {
            return $true;
        }
       }

       return $false;
}

$coordinatearray = @("0,0","0,1","0,2","0,3")
$coordinate = "0,4"

ArraySearch $coordinatearray -findThis $coordinate