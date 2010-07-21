source ~/.exports
source ~/.aliases

# readline settings
bind "set completion-ignore-case on" 
bind "set bell-style none" # No bell, because it's damn annoying
bind "set show-all-if-ambiguous On" # this allows you to automatically show completion without double tab-ing

# Autocomplete rake
source ~/.rake_complete

# Autocomplete git
source ~/.git_completion

# full screen
function fs() { printf "\e[3;0;0;t\e[8;0;0t"; /usr/bin/clear; return 0; }

# default screen
function ds() { printf "\e[8;35;150;t"; printf "\e[3;300;240;t"; /usr/bin/clear; return 0; }

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
