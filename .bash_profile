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
# Load paths
# -----------------------------------------------------------------------------

#source "${HOME}/.bashie/wp-cli/bin/wp"
#source "${HOME}/.bashie/wp-cli/utils/wp-completion.bash"

#export PATH=$PATH:/usr/local/mysql/bin
export PATH=/usr/local/bin:$PATH
#export PATH=/usr/local/Cellar/php54/5.4.21/bin:$PATH
#export PATH=/usr/local/Cellar/php54/5.4.23/bin:$PATH
#export PATH=/usr/local/Cellar/mariadb/5.5.32/bin:$PATH

# VirtualBox Setup
export PATH=$PATH:/Applications/VirtualBox.app/Contents/MacOS/


# -----------------------------------------------------------------------------
# Do other stuff
# -----------------------------------------------------------------------------

#ssh-add