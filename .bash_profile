#!/bin/bash

# -----------------------------------------------------------------------------
# Config
# -----------------------------------------------------------------------------

source "${HOME}/.bashie/config"

# Add colour to the terminal
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


# -----------------------------------------------------------------------------
# Load in files
# -----------------------------------------------------------------------------

# Libs (allow to add new files on the fly)
for f in `ls $BASHIE_LIB`
do
    source $BASHIE_LIB"/"$f
done


# -----------------------------------------------------------------------------
# Load paths (for MacOS)
# -----------------------------------------------------------------------------

if [ `uname` = "Darwin" ]; then
    export PATH=/usr/local/bin:$PATH
    export PATH="$(brew --prefix php54)/bin:$PATH"

    # VirtualBox Setup
    export PATH=$PATH:/Applications/VirtualBox.app/Contents/MacOS/
fi



# -----------------------------------------------------------------------------
# Do other stuff
# -----------------------------------------------------------------------------

#ssh-add