#!/bin/bash

# Config
# -----------------------------------------------------------------------------

source "${HOME}/.bashie/config"

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

#source "${HOME}/.bashie/wp-cli/bin/wp"
#source "${HOME}/.bashie/wp-cli/utils/wp-completion.bash"

##
# Your previous /Users/neil/.bash_profile file was backed up as /Users/neil/.bash_profile.macports-saved_2013-04-16_at_15:09:26
##

# MacPorts Installer addition on 2013-04-16_at_15:09:26: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

