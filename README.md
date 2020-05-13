[![Build Status](https://travis-ci.com/srujandeshpande/git-auto-pusher.svg?branch=master)](https://travis-ci.com/srujandeshpande/git-auto-pusher)
# Git Auto Pusher  
Git Auto Pusher is the ultimate tool that you never knew you needed. It automatically compiles and pushes your code using git every time you make a change.  
Never miss a compile ever again!  

## There are 2 versions of git-auto-pusher  
1. Commit whenever a file is changes
2. Commit after a duration of time

## How to Use for Version 1

### Step 1: Download
Download the zip containing all the files from the github repository  

### Step 2: Make sure you have git installed and on your PATH
Open your terminal of choice and type
`git --version`
If you see a version number, you're good! If you get an error, check that you have installed git and it is added to your PATH variables.

### Step 3: Copy the file
Unzip the download from earlier and locate the respective file for your terminal choice.
#### Shell or Bash
For Shell or Bash, copy the file `bash-git-file.sh`
#### Powershell
For Powershell, copy the file `ps-git-file.ps1`
#### Command Prompt
For Command Prompt, copy the file `cmd-git-file.bat`

### Step 4: Paste the file in your directory
Paste the copied file in your local repository

### Step 5: Run
Navigate to your repository in a terminal window and run Git Auto Pusher with the following command
#### Shell or Bash
For Shell or Bash, use the command `./bash-git-file.sh`
#### Powershell
For Powershell, use the command `./ps-git-file.ps1`  
Note that to use this in Powershell, you may have change settings for runnings scripts.
#### Command Prompt
For Command Prompt, use the command `cmd-git-file.bat`

### Step 6: Enter the file name
Once the script starts, you will be asked for a file name. This is the file that Git Auto Pusher will keep track of and check for changes. Any changes in this file will trigger adding of all the files in the repo and a commit and push.  

## How to Use for Version 2

### Step 1: Download
Download the zip containing all the files from the github repository  

### Step 2: Make sure you have git installed and on your PATH
Open your terminal of choice and type
`git --version`
If you see a version number, you're good! If you get an error, check that you have installed git and it is added to your PATH variables.

### Step 3: Copy the file
Unzip the download from earlier and locate the respective file for your terminal choice.
#### Shell or Bash
For Shell or Bash, copy the file ```time-based/bash-increment-git.sh```

### Step 4: Paste the file in your directory
Paste the copied file in your local repository

### Step 5: Run
Navigate to your repository in a terminal window and run Git Auto Pusher with the following command

#### Shell or Bash
For Shell or Bash, use the command ```./bash-increment-git.sh```

### Step 6: Enter the file name
Once the script starts, you will be asked for a duration in seconds. Git Auto Pusher will attempt to commit and push after every duration interval.

###### Made by Srujan Deshpande
