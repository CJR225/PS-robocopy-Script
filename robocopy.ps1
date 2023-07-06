
$Folder = 'C:\copyOneDrive'

if(Test-Path -Path $Folder) {

   robocopy "C:\copyOneDrive" "C:\Users\$Env:UserName\OneDrive - Central National Gottesman" /MOV


}else {

   New-Item -Path "C:\" -Name "copyOneDrive" -ItemType Directory

   robocopy "C:\Users\$Env:UserName\OneDrive - Central National Gottesman" "C:\copyOneDrive" /MIR

}
  
