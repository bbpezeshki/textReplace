# textReplace
bash script for text replacement in all files in ***and under*** passed in directory

positional arguments (in order):
  - [text to replace]
  - [text to replace with]
  - [directory]
  - [file stem identifier]
  - [file suffix]

**WARNING 1:** Script will open and resave all files (so dates will change)\
**WARNING 2:** The replacement is recursive!!!\
**WARNING 3:** The suffix argument does **not** limit which directories are renamed!!!\
**WARNING 4:** ***ALL*** text in files, filenames, and dirnames matching will be altered!!!\

sample command lines
---------------------
- ./textReplace.sh &nbsp; replacingThisText &nbsp; withThisText &nbsp; /in/this/dir &nbsp; \\* &nbsp; .txt\
    --> will recursively match with ***ALL*** dirs and subdirs and all files with suffix .txt
