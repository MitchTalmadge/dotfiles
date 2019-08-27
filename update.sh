#!/bin/bash

git pull --rebase origin master
/bin/bash migrations/migrate.sh
