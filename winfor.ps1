# get computer info
Get-CimInstance -Class CIM_ComputerSystem -ComputerName localhost -ErrorAction Stop | Select-Object *

# get remote system info 
Get-CimInstance -Class CIM_ComputerSystem -ComputerName (Get-Content -Path C:\Temp\Servers.txt) -ErrorAction Stop | Select-Object * | Out-GridView
