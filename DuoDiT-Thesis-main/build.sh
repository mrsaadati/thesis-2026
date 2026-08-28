#!/bin/bash

# Build the thesis using latexmk with xelatex
# -interaction=nonstopmode: Don't stop for errors
# -synctex=1: Enable SyncTeX for forward/inverse search
# -f: Force compilation even if there are errors

echo "Building TMU_thesis.tex..."
latexmk -xelatex -interaction=nonstopmode -synctex=1 -f TMU_thesis.tex

if [ $? -eq 0 ]; then
    echo "Build successful! Output: TMU_thesis.pdf"
else
    echo "Build finished with potential errors (check logs)."
fi
