rm -rf GeoLite2-City.mmdb.gz
wget http://geolite.maxmind.com/download/geoip/database/GeoLite2-City.mmdb.gz GeoLite2-City.mmdb.gz
git add .
git commit -m "The database updated!"
git push
