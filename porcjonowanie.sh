#!/bin/bash

var="/home/devel/porcjonowanie_zdjec/kozienice_map"
sudo rm kozienice_map.png_*
sudo split -b 200000 ../kozienice_map.png kozienice_map/kozienice_map.png_
