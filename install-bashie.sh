#!/bin/bash

# .bashie is based on Ray's original BashDots
# https://github.com/RayViljoen/bashdots/

echo '


               ..                   .x+=:.                  .               
         . uW8"                    z`    ^%    .uef^"      @88>             
         `t888                        .   <k :d88E         %8P              
          8888   .         u        .@8Ned8" `888E          .         .u    
          9888.z88N     us888u.   .@^%8888"   888E .z8k   .@88u    ud8888.  
          9888  888E .@88 "8888" x88:  `)8b.  888E~?888L ``888E` :888`8888. 
          9888  888E 9888  9888  8888N=*8888  888E  888E   888E  d888 `88%" 
          9888  888E 9888  9888   %8"    R88  888E  888E   888E  8888.+"    
     .    9888  888E 9888  9888    @8Wou 9%   888E  888E   888E  8888L      
   .@8c  .8888  888" 9888  9888  .888888P`    888E  888E   888&  `8888c. .+ 
  `%888"  `%888*%"   "888*""888" `   ^"F     m888N= 888>   R888"  "88888%   
    ^*       "`       ^Y"   ^Y`               `Y"   888     ""      "YP`   
                                                   J88"                     
                                                   @%                       
                                                 :"                         


                    https://github.com/WolfieZero/bashie/
               based on https://github.com/RayViljoen/.bashdots/

                                 WolfieZero
                           http://wolfiezero.com/

'

# .bashie directory
BASHIE_DIR="$(dirname "$0")"

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true


# Add new terminal functionality
function bashieAdd() {

  if ! cmd_loc="$(type -p "$1")" || [ -z "$cmd_loc" ]; then
    echo "$1 installing"
    $1 install wget
  else
    echo "$1 installed already"
  fi

}


# Install
function bashieInstall() {

  #----------------------------
  # ----- Create symlinks -----
  #----------------------------

  ln -sf $PWD/.bash_profile ~/.bash_profile
  ln -sf $PWD/.bashrc ~/.bashrc
  ln -sf $PWD/.inputrc ~/.inputrc

  # Check if mac
  if [ `uname` = "Darwin" ]; then


    # Install new functionality
    bashieAdd brew 'ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"'
    bashieAdd tree 'brew install tree'
    bashieAdd tree 'brew install wget'

    # Get rid of the function
    unset bashieAdd

    # Source it
    source ~/.bash_profile
    echo "Done"

  fi

}


# Confirm symlinks unless forced
if [ "$1" == "--force" -o "$1" == "-f" ]; then
  bashieInstall
  # Default to install with prompt
else
  read -p "Create .bashie symlinks and overwrite existing bash dotfiles? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    bashieInstall
  fi
fi
unset bashieInstall
