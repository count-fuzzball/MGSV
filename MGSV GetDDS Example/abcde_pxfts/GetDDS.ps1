#Get all .ftex names in the current folder and sub-folders.
$pftxsfolderitems = Get-ChildItem ".\" -Attributes !Directory+!System -recurse -Exclude *.1.ftexs,*.2.ftexs,*.3.ftexs,*.ps1

#Path to unpacked DDS files.
$PathToDDS = "..\texturesconverted"

foreach ($i in $pftxsfolderitems) 
{
 $BasenameFtexs = $i.BaseName
 #$FullPathToFilename = $i.FullName

 mkdir -force DDS_Files

 copy-item "$PathToDDS\$BasenameFtexs.dds" "DDS_Files\$BasenameFtexs.dds"
}