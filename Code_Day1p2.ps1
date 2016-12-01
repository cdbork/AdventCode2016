
#ArraySearch $coordinateArray -findThis $thingToFind
function ArraySearch ([string[]]$arraytoSearch, [string]$findThis) {

       foreach ($thing in $arraytoSearch){
        if ($thing -eq $findThis) {
            return $true;
        }
       }

       return $false;
}


#$Steps = Get-Content 'C:\Advent Code\2016\AdventCode2016.git\trunk\Test_Day1.txt'
$Steps = Get-Content 'C:\Advent Code\2016\AdventCode2016.git\trunk\Input_Day1.txt'

$Sequence = $Steps.split(',')
$Sequence = $Sequence.Trim(" ")

$Direction = 'N'
$NSCount = 0
$EWCount = 0
[System.Collections.ArrayList]$coordinatearray = @("0,0")
$coordinate = "0,0"
$foundMatch = $false

foreach ($step in $Sequence){
    $turn = $step[0]
    $distance = [convert]::ToInt32($step.trimstart("LR"))
    if( $foundMatch -eq $true){break}
    switch ($Direction){
        'N' {
            if ($turn -eq 'L') { 
                $Direction='W'; 
                #$EWCount-=$distance
                for ($i=1;$i -le $distance;$i++)
                {
                    $EWCount-=1
                    $coordinate="$EWCount,$NSCount"
                    $foundMatch = ArraySearch $coordinateArray -findThis $coordinate
                    if ($foundMatch -eq $true) {break;}
                    $coordinateArray.Add($coordinate)
                }
            }
            else{ 
                $Direction='E'; 
                #$EWCount+=$distance
                for ($i=1;$i -le $distance;$i++)
                {
                    $EWCount+=1
                    $coordinate="$EWCount,$NSCount"
                    $foundMatch = ArraySearch $coordinateArray -findThis $coordinate
                    if ($foundMatch -eq $true) {break;}
                    $coordinateArray.Add($coordinate)
                }
            }
        }
        'S' {
            if ($turn -eq 'L') { 
                $Direction='E'; 
                #$EWCount+=$distance
                for ($i=1;$i -le $distance;$i++)
                {
                    $EWCount+=1
                    $coordinate="$EWCount,$NSCount"
                    $foundMatch = ArraySearch $coordinateArray -findThis $coordinate
                    if ($foundMatch -eq $true) {break;}
                    $coordinateArray.Add($coordinate)
                }
            }
            else{ 
                $Direction='W'; 
                #$EWCount-=$distance
                for ($i=1;$i -le $distance;$i++)
                {
                    $EWCount-=1
                    $coordinate="$EWCount,$NSCount"
                    $foundMatch = ArraySearch $coordinateArray -findThis $coordinate
                    if ($foundMatch -eq $true) {break;}
                    $coordinateArray.Add($coordinate)
                }
            }
        }
        'E' {
            if ($turn -eq 'L') { 
                $Direction='N'; 
                #$NSCount+=$distance
                for ($i=1;$i -le $distance;$i++)
                {
                    $NSCount+=1
                    $coordinate="$EWCount,$NSCount"
                    $foundMatch = ArraySearch $coordinateArray -findThis $coordinate
                    if ($foundMatch -eq $true) {break;}
                    $coordinateArray.Add($coordinate)
                }
            }
            else{ 
                $Direction='S'; 
                #$NSCount-=$distance
                for ($i=1;$i -le $distance;$i++)
                {
                    $NSCount-=1
                    $coordinate="$EWCount,$NSCount"
                    $foundMatch = ArraySearch $coordinateArray -findThis $coordinate
                    if ($foundMatch -eq $true) {break;}
                    $coordinateArray.Add($coordinate)
                }
            }
        }
        'W' {
            if ($turn -eq 'L') { 
                $Direction='S'; 
                #$NSCount-=$distance
                for ($i=1;$i -le $distance;$i++)
                {
                    $NSCount-=1
                    $coordinate="$EWCount,$NSCount"
                    $foundMatch = ArraySearch $coordinateArray -findThis $coordinate
                    if ($foundMatch -eq $true) {break;}
                    $coordinateArray.Add($coordinate)
                }
            }
            else{ 
                $Direction='N'; 
                #$NSCount+=$distance
                for ($i=1;$i -le $distance;$i++)
                {
                    $NSCount+=1
                    $coordinate="$EWCount,$NSCount"
                    $foundMatch = ArraySearch $coordinateArray -findThis $coordinate
                    if ($foundMatch -eq $true) {break;}
                    $coordinateArray.Add($coordinate)
                }
            }
        } 
    }

}
$coordinate
$totalDistance = [math]::abs($NSCount) + [math]::abs($EWCount)
$totalDistance
 