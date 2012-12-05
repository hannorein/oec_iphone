#!/bin/bash
rsync -rvz --delete --exclude=".git/" --exclude="*/.git/" . hanno-rein.de:/home/hanno/public_html/exoplanet.hanno-rein.de/data/open_exoplanet_catalogue/
