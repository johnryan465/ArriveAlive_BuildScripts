#!/bin/bash
#Script to create Republic of Ireland PBF

#OSM Convert must be installed, Uncomment whichever
#Debian instructions
#sudo add-apt-repository -y ppa:kakrueger/openstreetmap
#sudo apt-get update
#sudo apt-get --no-install-recommends install -y osmctools
#Arch instcructions
#yaourt -S osmconvert
URL1="http://download.geofabrik.de/europe/ireland-and-northern-ireland-latest.osm.pbf"
URL2="http://arrivealive.xyz/downloads/eire.poly"
wget $URL1 -O ireland.osm.pdf
wget $URL2 -O eire.poly
osmconvert ireland.osm.pbf -B=eire.poly -o=eire.osm.pbf 
