#!/bin/bash --login
[ -d "BHT-EMR-API" ] && echo "API already cloned." || git clone https://github.com/HISMalawi/BHT-EMR-API.git
cd $WORKSPACE && chmod 777 BHT-EMR-API
cd $WORKSPACE/BHT-EMR-API && git pull -f 
git checkout v4.17.0-beta -f
