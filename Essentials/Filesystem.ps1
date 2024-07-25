# Get children of a directory (this one gets users on system)
Get-Childitem C:\Users\ -Name

# Same as above but will visit each dir and file then count them all
(Get-Childitem C:\Users\ -Name -recurse).count 

# Create a new file in given directory
New-Item -ItemType File -Path .\NewFile.txt

#Remove the file
rm .\NewFile.txt

