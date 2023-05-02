#!/bin/bash --login
[ -d "HIS-Core" ] && echo "Core already cloned." || git clone https://github.com/HISMalawi/HIS-Core-release.git HIS-Core
cd $WORKSPACE && chmod 777 HIS-Core
cd $WORKSPACE/HIS-Core && git pull -f
git checkout v1.8.2 -f
