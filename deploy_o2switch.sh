#!/bin/bash

FILE="$(date '+%Y-%m-%d')serverupload_02switch.tar"

DIR="src"

tar cf "$FILE" src

tar --append --file="$FILE"  "translations"
tar --append --file="$FILE"  "public"
tar --append --file="$FILE"  "config"
tar --append --file="$FILE"  "templates"
tar --append --file="$FILE"  ".env"

gzip "$FILE"
