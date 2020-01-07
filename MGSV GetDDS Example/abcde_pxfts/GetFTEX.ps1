#Get all .ftex names in the current folder and sub-folders.
$pftxsfolderitems = Get-ChildItem ".\" -Attributes !Directory+!System -recurse -Exclude *.ps1 *.ftex

#Path to unpacked DDS files.
$PathToFtex = "..\"

foreach ($i in $pftxsfolderitems)
{
 $BasenameFtexs = $i.BaseName
 #$FullPathToFilename = $i.FullName

 mkdir -force Ftexs_Files

 get-childitem -path "$PathToFtex" -filter "$BasenameFtexs.*.ftexs" | copy-item -destination "Ftexs_Files\"
 copy-item "$BasenameFtexs.ftex" -Destination "Ftexs_Files\$BasenameFtexs.ftex"
 copy-item "$BasenameFtexs.1.ftexs" -Destination "Ftexs_Files\$BasenameFtexs.1.ftexs"
}
