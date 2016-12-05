

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

$rowHolder = 0
foreach($set in $inputs){
if ($rowHolder -eq 0){
    [int]$side1A = 0
    [int]$side1B = 0
    [int]$side1C = 0
    [int]$side2A = 0
    [int]$side2B = 0
    [int]$side2C = 0
    [int]$side3A = 0
    [int]$side3B = 0
    [int]$side3C = 0
}

    switch ($rowHolder){
        '0' {
            [int]$side1A = $set[2]+$set[3]+$set[4]
            [int]$side1B = $set[7]+$set[8]+$set[9]
            [int]$side1C = $set[12]+$set[13]+$set[14]
            $rowHolder+=1
        }
        '1' {
            [int]$side2A = $set[2]+$set[3]+$set[4]
            [int]$side2B = $set[7]+$set[8]+$set[9]
            [int]$side2C = $set[12]+$set[13]+$set[14]        
            $rowHolder+=1
        }     
        '2' {
            [int]$side3A = $set[2]+$set[3]+$set[4]
            [int]$side3B = $set[7]+$set[8]+$set[9]
            [int]$side3C = $set[12]+$set[13]+$set[14]
            if((Is-Triangle -a $side1A -b $side2A -c $side3A) -eq $true){
                $trianglesFound+=1
            }
            if((Is-Triangle -a $side1B -b $side2B -c $side3B) -eq $true){
                $trianglesFound+=1
            }
            if((Is-Triangle -a $side1C -b $side2C -c $side3C) -eq $true){
                $trianglesFound+=1
            }
            $rowholder=0
        }
        
    }
}
#    $side1A
#    $side1B
#    $side1C
#    $side2A
#    $side2B
#    $side2C
#    $side3A
#    $side3B
#    $side3C
$trianglesFound