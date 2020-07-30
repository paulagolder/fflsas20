#!/bin/bash

FILE="$(date '+%Y-%m-%d')deploy_o2switch_config.tar"

tar cf "$FILE"   ".env.local"

gzip "$FILE"
