
#DialMover $nowAt -whereNext $theDirection
function DialMover ([string]$CurrentSpot, [string]$whereNext) {

    switch ($CurrentSpot) {
        '1' {
            if($whereNext -eq "R") { return "2";}
            elseif($whereNext -eq "D") { return "4";}
            else{ return "1";}
            
        }
        '2' {
            if($whereNext -eq "R") { return "3";}
            elseif($whereNext -eq "D") { return "5";}
            elseif($whereNext -eq "L") { return "1";}
            else{ return "2";}
        }
        '3' {
            if($whereNext -eq "L") { return "2";}
            elseif($whereNext -eq "D") { return "6";}
            else{ return "3";}
        }
        '4' {
            if($whereNext -eq "R") { return "5";}
            elseif($whereNext -eq "D") { return "7";}
            elseif($whereNext -eq "U") { return "1";}
            else{ return "4";}
        }
        '5' {
            if($whereNext -eq "R") { return "6";}
            elseif($whereNext -eq "D") { return "8";}
            elseif($whereNext -eq "U") { return "2";}
            else{ return "4";}
        }
        '6' {
            if($whereNext -eq "L") { return "5";}
            elseif($whereNext -eq "D") { return "9";}
            elseif($whereNext -eq "U") { return "3";}
            else{ return "6";}
        }
        '7' {
            if($whereNext -eq "R") { return "8";}
            elseif($whereNext -eq "U") { return "4";}
            else{ return "7";}
        }
        '8' {
            if($whereNext -eq "R") { return "9";}
            elseif($whereNext -eq "U") { return "5";}
            elseif($whereNext -eq "L") { return "7";}
            else{ return "8";}
        }
        '9' {
            if($whereNext -eq "L") { return "8";}
            elseif($whereNext -eq "U") { return "6";}
            else{ return "9";}
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
