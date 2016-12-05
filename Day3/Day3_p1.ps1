

function Is-Triangle ([int]$a,[int]$b,[int]$c){
    if (($a + $b) -le $c){
        return $false
    }
    elseif (($a + $c) -le $b){
        return $false
    }
    elseif (($c + $b) -le $a){
        return $false
    }
    else {
        return $true
    }
}

$inputs = Get-Content "C:\Advent Code\2016\AdventCode2016.git\trunk\Day3\Input_3.txt"
#$inputs = Get-Content "C:\Advent Code\2016\AdventCode2016.git\trunk\Day3\Test_3.txt"
$trianglesFound = 0

foreach($set in $inputs){
    [int]$sideA = $set[2]+$set[3]+$set[4]
    [int]$sideB = $set[7]+$set[8]+$set[9]
    [int]$sideC = $set[12]+$set[13]+$set[14]
    if((Is-Triangle -a $sideA -b $sideB -c $sideC) -eq $true){
        $trianglesFound+=1
    }
}
$trianglesFound