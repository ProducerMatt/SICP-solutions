#!/bin/sh

if [ -z "$1" ]; then
    echo "MISSING ARGS!$1"
    exit 2
else
    TARGET=$(basename -s .org $1)
    pandoc "$1" -s -o $TARGET.tex && xelatex $TARGET.tex
fi
