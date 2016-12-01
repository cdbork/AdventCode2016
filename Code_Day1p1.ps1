
#$Steps = Get-Content 'C:\Advent Code\2016\Test_Day1.txt'
$Steps = Get-Content 'C:\Advent Code\2016\Input_Day1.txt'

$Sequence = $Steps.split(',')
$Sequence = $Sequence.Trim(" ")

$Direction = 'N'
$NSCount = 0
$EWCount = 0

foreach ($step in $Sequence){
    $turn = $step[0]
    $distance = [convert]::ToInt32($step.trimstart("LR"))
    
    switch ($Direction){
        'N' {
            if ($turn -eq 'L') { $Direction='W'; $EWCount-=$distance}
            else{ $Direction='E'; $EWCount+=$distance}
        }
        'S' {
            if ($turn -eq 'L') { $Direction='E'; $EWCount+=$distance}
            else{ $Direction='W'; $EWCount-=$distance}
        }
        'E' {
            if ($turn -eq 'L') { $Direction='N'; $NSCount+=$distance}
            else{ $Direction='S'; $NSCount-=$distance}
        }
        'W' {
            if ($turn -eq 'L') { $Direction='S'; $NSCount-=$distance}
            else{ $Direction='N'; $NSCount+=$distance}
        }
    }

}

$totalDistance = [math]::abs($NSCount) + [math]::abs($EWCount)
$totalDistance