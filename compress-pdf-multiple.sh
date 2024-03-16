#!/bin/bash

echo
echo "Begin process..."
echo

find . -name '*.pdf' | while read pdf; do ./compress-pdf-single.sh "$pdf"; done

echo
echo "Done!"
echo
