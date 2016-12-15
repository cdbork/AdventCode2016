$Disk1=13
$Disk2=5
$Disk3=17
$Disk4=3
$Disk5=7
$Disk6=19
$Disk7=11

$D1Pos=12
$D2Pos=2
$D3Pos=14
$D4Pos=1
$D5Pos=0
$D6Pos=4
$D7Pos=7

$droptime=0
#($D1Pos+$droptime)%$Disk1
#($D2Pos+$droptime)%$Disk2
#($D3Pos+$droptime)%$Disk3
#($D4Pos+$droptime)%$Disk4
#($D5Pos+$droptime)%$Disk5
#($D6Pos+$droptime)%$Disk6

while((($D1Pos+$droptime)%$Disk1 -ne 0) -or (($D2Pos+$droptime)%$Disk2 -ne 0) -or (($D3Pos+$droptime)%$Disk3 -ne 0) -or (($D4Pos+$droptime)%$Disk4 -ne 0) -or (($D5Pos+$droptime)%$Disk5 -ne 0) -or (($D6Pos+$droptime)%$Disk6 -ne 0)-or (($D7Pos+$droptime)%$Disk7 -ne 0)){
    $droptime+=1
}
$droptime