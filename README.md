# Script Kiddy
A script dedicated to assisting all script kiddys (people new to scripting) in automating CSE310 assignments

## Installation
Sign into general.asu.edu, and run the git clone command:
```bash
git clone https://github.com/mahaloz/Script-Kiddy.git
```
## Usage:
### Get Files
#### UPDATES:
The information below worked for assignment1 because all files are stored on Feng server.
Do not use the get_files program for assignment4, as it requires a BB login, which I do not want to support. Simply download the input and output files yourself and put them in the /tmp/ folder of your system. 

Before running Script Kiddy, you must first run the get_files script.
*NOTE*: You will need to run this only once each time you login. All temporary files are stored
in /tmp/ which means you will need to redo this process with each login, as tmp is reset.

First cd into the newly cloned directory
```bash
cd Script-Kiddy
```

To get the files from Feng's server run:
```bash
./get_files.sh <Assignment Number> <Number of files of input/output>
```
Usually the input/output file amount will be 4. An example run on assignment 1 would be:
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
Output will be in the form of N diff text files. Diff is used to get the difference
of each file, so if a txt file is empty, that means there is no differences in the output of your program.

Each diffN.txt file will corospond to the inputN file. diff4.txt is the the differance in output4.txt and your programs output.

To learn more about diff syntax see [diff](https://www.computerhope.com/unix/udiff.html) 

### TODO
Recently this has tool has shown to be unusable in the blackboard verification system of
Fengs server. This can cause the tool to not download files because of authentication.
A fix could involve having a self deleting tool to download with someones credentials.
