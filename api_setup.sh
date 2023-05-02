#!/bin/bash --login
echo "--------------------------------------------" 
git checkout v4.17.2 -f
git describe > HEAD
echo "____________________________________________"
echo "Removing Gemfile.lock"
echo "____________________________________________"
rm Gemfile.lock
echo "____________________________________________"
echo "Installing Local Gems"
echo "____________________________________________"
bundle install --local
echo "--------------------------------------------"
#rm -rf /var/www/BHT-EMR-API/db/migrate/20221112075527_create_lims_acknowledgement_statuses.rb
echo "running bin_update art"
echo "____________________________________________"
./bin/update_art_metadata.sh development
echo "--------------------------------------------"
echo "Changing Timeout and Pool in database.yml"
echo "____________________________________________"
sed -i '7 s/5/200/g' config/database.yml
sed -i '8 s/5000/10000/g' config/database.yml
echo "--------------------------------------------"
