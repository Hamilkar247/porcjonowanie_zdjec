#!/bin/bash

function portion_function
{
    folder="$1"
    zdjecie="$2"
    var="/home/devel/porcjonowanie_zdjec"
    echo "usuwam stare party zdjęć"
    sudo rm "$folder"/"$zdjecie"_*     #kozienice/kozienice_map.png_*
    echo "dzielimy zdjecia"
    #b - bajty, d - sufix sumeryczny 
    sudo split -b 200000 ../"$zdjecie" "$folder"/"$zdjecie""_" -d
    #usuwam "przewodzace" zero /leading zero
    echo "poprawiam ich nazewnictwo"
    rename 's/_0{1,}([0-9]+)/_$1/' "$folder"/"$zdjecie"_*
}

while true; do
  echo "kozienice"
  portion_function "kozienice" "kozienice_map.png"
  echo "piaseczno"
  portion_function "piaseczno" "piaseczno_map.png"
  echo "kolno"
  portion_function "kolno" "kolno_map.png"
  var="1200"
  echo "czas na sen $var sekund"
  sleep $var
done
