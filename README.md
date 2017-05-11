# Automating RegRipper

This script runs the common Windows Digital Forensics tool RegRipper against extracted registry hives. It assumes a particular directory structure. However, these can be easily modified inside of the script.

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


## History

- May 2nd, 2017 - First version written for use on assignment
- May 11th, 2017 - First commit

## Credits

This script was written by myself, Dana Taylor, to automate the registry forensics process.

RegRipper is an open source forensic software application developed by Harlan Carvey. It can be found on his Github here: https://github.com/keydet89/RegRipper2.8.

## License

See the included LICENSE file. GNU GPL v3.0 applies.