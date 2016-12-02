
#DialMover $nowAt -whereNext $theDirection
function DialMover ([string]$CurrentSpot, [string]$whereNext) {

    switch ($CurrentSpot) {
        '1' {
            if($whereNext -eq "D") { return "3";}
            else{ return "1";}
            
        }
        '2' {
            if($whereNext -eq "R") { return "3";}
            elseif($whereNext -eq "D") { return "6";}
            else{ return "2";}
        }
        '3' {
            if($whereNext -eq "R") { return "4";}
            elseif($whereNext -eq "D") { return "7";}
            elseif($whereNext -eq "U") { return "1";}
            else{ return "2";}
        }
        '4' {
            if($whereNext -eq "L") { return "3";}
            elseif($whereNext -eq "D") { return "8";}
            else{ return "4";}
        }
        '5' {
            if($whereNext -eq "R") { return "6";}
            else{ return "5";}
        }
        '6' {
            if($whereNext -eq "L") { return "5";}
            elseif($whereNext -eq "D") { return "A";}
            elseif($whereNext -eq "U") { return "2";}
            else{ return "7";}
        }
        '7' {
            if($whereNext -eq "R") { return "8";}
            elseif($whereNext -eq "D") { return "B";}
            elseif($whereNext -eq "U") { return "3";}
            else{ return "6";}
        }
        '8' {
            if($whereNext -eq "R") { return "9";}
            elseif($whereNext -eq "U") { return "4";}
            elseif($whereNext -eq "L") { return "7";}
            else{ return "C";}
        }
        '9' {
            if($whereNext -eq "L") { return "8";}
            else{ return "9";}
        }    
        'A' {
            if($whereNext -eq "R") { return "B";}
            elseif($whereNext -eq "U") { return "6";}
            else{ return "A";}
        }
        'B' {
            if($whereNext -eq "R") { return "C";}
            elseif($whereNext -eq "D") { return "D";}
            elseif($whereNext -eq "U") { return "7";}
            else{ return "A";}
        }
        'C' {
            if($whereNext -eq "L") { return "B";}
            elseif($whereNext -eq "U") { return "8";}
            else{ return "C";}
        }
        'D' {
            if($whereNext -eq "U") { return "B";}
            else{ return "D";}
        }    
    }    
}

$nowAt = "5"

$Directions = Get-Content "C:\Advent Code\2016\AdventCode2016.git\trunk\Day2\Input_Day2.txt"

foreach ($line in $Directions){
    $line.GetEnumerator()|foreach{
        $nowAt = DialMover $nowAt -whereNext $_
    }
    $nowAt

}
