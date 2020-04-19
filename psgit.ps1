echo Enter the name of the file you want to continously track
$FileName = "file.txt"
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
