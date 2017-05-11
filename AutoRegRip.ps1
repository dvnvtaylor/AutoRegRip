## Script to run extracted registry hives through RegRipper.

## Set the path to grab the user unique hives. The README explains the expected formatting for the directories.
$path = gci '.\User Hives\'

## For each unique folder in $path, (assuming one per user), parse the NTUSER.dat and UsrClass.dat and name the output files based on containing folder name.
foreach ($user in $path){
  
	$name = $user.Name
    echo $name
    .\rip.exe -r .\'User Hives'\$name\NTUSER.DAT -f ntuser > .\'User Hives'\$name\nt_"$name".txt
	.\rip.exe -r .\'User Hives'\$name\UsrClass.dat -f usrclass > .\'User Hives'\$name\usr_"$name".txt
}

## Parse the non-user specifc hives. Assumes they are in the top level directory.
$sysHives = @("SAM","SECURITY","SOFTWARE","SYSTEM")
foreach ($hive in $sysHives){

	.\rip.exe -r .\"$hive" -f "$hive" > .\"$hive".txt
}