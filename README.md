# Script Kiddy
A script dedicated to assisting all script kiddys in automating CSE310 assignments

## Installation
Sign into general.asu.edu, and run the git clone command:
```bash
git clone https://github.com/mahaloz/Script-Kiddy.git
```
## How to Use:
### Get Files
Before running Script Kiddy, you must first run the get_files script.
*NOTE*: You will need to run this only once each time you login. All files are stored
in /tmp/ which means you will need to redo this process with each login.

To get the files from Feng's server run:
```bash
./get_files.sh <Assignment Number> <Number of files of input/output>
```
Usually the input/output file amount will be 4. An example rum on assignment 1 would be:
```bash
./get_files.sh 1 4
```

### Test Files
To finally test files, simply run Script Kiddy with the path to the program:
```bash
./script_kiddy.sh /path/to/program
```

Example:
```bash
./script_kiddy.sh ~/CSE310/HW1/Assignment1
```
 
### Understanding output
Output will be in the form of N amount 
