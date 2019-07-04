# History control
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=100000
HISTFILESIZE=2000000

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.dotfiles/.oh-my-zsh"

# Load the shell dotfiles, and then some:
for file in ~/.dotfiles/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
ZSH_THEME="random"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export EDITOR='vim'

export PATH="$HOME/bin:$PATH";

if [ "$(uname)" == "Darwin" ]; then
  echo "Mac-OS"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "Linux"
  PATH="$PATH:/opt/anaconda3/bin"
fi

clear
