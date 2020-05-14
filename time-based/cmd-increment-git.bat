@echo off &setlocal

TITLE Git Auto Pusher

Set file=file.txt

cls

:DoGit

git add .
git commit -m "%modif_time%"
git push
Timeout /t 1 >nul


GOTO CheckforAlter
