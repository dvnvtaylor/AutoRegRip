# Automating RegRipper

This script recursively runs the DFIR tool RegRipper against extracted registry hives.

## Usage

This script assumes the following directory layout for RegRipper and the hives to analyze:

##### Top Level Directory/
 - All extracted RegRipper dependancies. RegRipper doesn't like when you run it from outside it's containing dir.
 - SAM
 - SECURITY
 - SOFTWARE
 - SYSTEM
 - User Hives/
     - User1/
         - NTUSER.dat
         - UsrClass.dat
     - User2/
         - NTUSER.dat
         - UsrClass.dat
     - User3/
         - NTUSER.dat
         - UsrClass.dat
 - AutoRegRip



## Credits

RegRipper is an open source forensic software application developed by Harlan Carvey. It can be found on his Github here: https://github.com/keydet89/RegRipper2.8.
