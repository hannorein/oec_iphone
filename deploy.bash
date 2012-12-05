#!/bin/bash
rsync -rvz -e ssh --delete --exclude=".git/" --exclude="*/.git/" --chmod=uga+rw,Duga+rwx . hanno-rein.de:/home/hanno/public_html/exoplanet.hanno-rein.de/data/open_exoplanet_catalogue/
ssh hanno-rein.de <<'ENDSSH'
cd /home/hanno/public_html/exoplanet.hanno-rein.de/data
echo "Starting update on"
hostname
php update.php
echo "Update done."
ENDSSH
