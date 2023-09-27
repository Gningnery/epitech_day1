#!/bin/sh

echo "Nom du commit:$1"
if [ $# -eq 0 ]; then
    >&2 echo "No arguments provided"
    exit 1
fi
git add .
git commit -m "$1"
git push
