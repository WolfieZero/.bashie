#!/bin/bash

# Config
# -----------------------------------------------------------------------------

source "config"

# Default editor
EDITOR="subl" # sublime

# Add colour to the terminal
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx



# Load in files
# -----------------------------------------------------------------------------

# Libs (allow to add new files on the fly)
for f in `ls $BASHIE_LIB`
do
    source $BASHIE_LIB"/"$f
done
