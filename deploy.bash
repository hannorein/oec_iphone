#!/bin/bash
#rsync -rvz -e ssh --delete --exclude=".git/" --exclude="*/.git/" --chmod=uga+rw,Duga+rwx . hanno-rein.de:/home/hanno/public_html/exoplanet.hanno-rein.de/data/open_exoplanet_catalogue/
ssh hanno-rein.de <<'ENDSSH'
cd /home/hanno/public_html/exoplanet.hanno-rein.de/

pushd open_exoplanet_catalogue
git pull
popd

pushd oec
git pull
popd

pushd oec_meta
git pull
popd

ENDSSH
