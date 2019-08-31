#!/bin/sh

git pull --rebase origin master
/bin/sh migrations/migrate.sh
