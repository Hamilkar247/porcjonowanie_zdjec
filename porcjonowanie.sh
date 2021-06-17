#!/bin/bash

folder="$1"
zdjecie="$2"
var="/home/devel/porcjonowanie_zdjec"
sudo rm "$folder"/"$zdjecie"_*     #kozienice/kozienice_map.png_*
#b - bajty, d - sufix sumeryczny 
sudo split -b 200000 ../"$zdjecie" "$folder"/"$zdjecie""_" -d
#usuwam "przewodzace" zero /leading zero
rename 's/_0{1,}([0-9]+)/_$1/' "$folder"/"$zdjecie"_*

