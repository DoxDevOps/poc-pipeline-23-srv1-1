#!/bin/bash --login
echo "--------------------------------------------"
echo "Checkout tag"
git checkout v1.8.0-0-beta -f
echo "--------------------------------------------"
git describe > HEAD
echo "____________________________________________"
echo "Making changes to config.json"
echo "____________________________________________"
#cp config.json.example application.json
echo "____________________________________________"
