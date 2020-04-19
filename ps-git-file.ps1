cls
echo "Welcome to git-auto-pusher! This was created by Srujan Deshpande"
echo "This version will track a single file. To exit, Press Ctrl+C"
$FileName = Read-Host -Prompt 'Enter the name of the file you would like to track'
$FileTime = Get-Date

# endless loop
for () {
    $file = Get-Item $FileName
    if ($FileTime -ne $file.LastWriteTime) {
        git add .
        git commit -m "$FileTime"
        git push
    }
    $FileTime = $file.LastWriteTime
    Start-Sleep 1
}
