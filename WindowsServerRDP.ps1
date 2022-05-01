Write-Host  "

    / ======= \
   / __________\
  | ___________ |
  | | -       | |
  | |         | |
  | |_________| |________________________
  \=____________/   Fuel Server RDP Tool )
  / ''''''''''' \                       /
 / ::::::::::::: \                  
(_________________) 

"
                                                               


while($true){
    $location = Read-Host "Enter The Store Number"
    $USDNS = "USFUEL" + $location.PadLeft(5,'0') + "S1"
    $CADNS = "CAFUEL" + $location.PadLeft(5,'0') + "S1"
    $ErrorActionPreference = "silentlycontinue"
    $IP1 = (Resolve-DnsName $USDNS).address
    $IP2 = (Resolve-DnsName $CADNS).address 
    $ErrorActionPreference = "continue"
    
        if($IP1)
        {
        mstsc.exe /v:$IP1 
        }
    
        elseif($IP2)
        {
        mstsc.exe /v:$IP2 
        } 
        else{
        Write-Host -ForegroundColor Red "Invalid Location Number"
        }


      }


