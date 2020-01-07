# MGSV
Scripts and things for MGSV modding

GetDDS:
This a PowerShell script which should be placed inside an already unpacked PFXTS directory and then run.

It will take all .ftex names in the directory and subdirectories and try and copy the corresponding DDS from your converted texture folder to a folder called DDS_Files.

You'll need to open up the script and change the $PathToDDS variable to the path where you have converted the MGSV textures using MorbidSlinky's Mass Texture Converter.

GetFTEX:
This a PowerShell script which should be placed inside an already unpacked PFXTS directory and then run.

It will take all .ftex names in the directory and subdirectories and try and copy the corresponding .1.ftexs, .2.ftexs, etc from your unpacked archives folder (hope you used condensed folder structure :) ) to a folder called FTEX_Files.

You'll need to open up the script and change the $PathToFTEX variable to the path where you have extracted the Ftex files using MorbidSlinky's Archive Unpacker and have ticked the "Use condensed folder structure".
