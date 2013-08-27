#!/bin/bash

# Config
# -----------------------------------------------------------------------------

source "${HOME}/.bashie/config"

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

#source "${HOME}/.bashie/wp-cli/bin/wp"
#source "${HOME}/.bashie/wp-cli/utils/wp-completion.bash"

export PATH=$PATH:/usr/local/mysql/bin