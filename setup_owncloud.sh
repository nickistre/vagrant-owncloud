#!/usr/bin/env bash

# Run as root!

# Setup postgres and owncloud

PGUSER=owncloud
PGPASS=owncloud
PGDATABASE=owncloud

# Setup owncloud user
sudo -u postgres createuser $PGUSER
sudo -u postgres psql -U postgres -d postgres -c "ALTER USER $PGUSER WITH PASSWORD '$PGPASS';" 

# Setup owncloud database
sudo -u postgres psql -U postgres -d postgres -c "CREATE DATABASE $PGDATABASE WITH ENCODING='UTF8' OWNER=$PGUSER;"