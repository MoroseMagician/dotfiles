# Lines configured by zsh-newuser-install



# End of lines added by compinstall

autoload -Uz promptinit
promptinit
prompt redhat

# Load alises
source $HOME/.aliases
# Force screen-256color
export TERM='xterm-256color'

# Set the editor and pager
export EDITOR='vim'
export PAGER='less'

# Locale stuff
export LANG='en_US.UTF-8'
