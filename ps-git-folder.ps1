cls
write-Host "Welcome to git-auto-pusher! This was created by Srujan Deshpande"
write-Host "This version will track the parent folder"
$FileName = (Get-Location).Path
$FileTime = Get-Date

# endless loop
for () {
    $file = Get-Item $FileName
    if ($FileTime -ne $file.LastWriteTime) {
        git add .
        git commit -m "auto-commit $FileTime"
        git push
    }
    $FileTime = $file.LastWriteTime
    Start-Sleep 1
}
