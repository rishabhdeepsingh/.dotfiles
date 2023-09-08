export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export EDITOR="vim"
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.dotfiles/.oh-my-zsh"

# Load the shell dotfiles, and then some:
for file in ~/.dotfiles/.{path,bash_prompt,exports,aliases,functions,extra,google}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh
source $HOME/.zplug/init.zsh

# zsh Plugins using zplug 
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "tysonwolker/iterm-tab-colors"
zplug "momo-lab/zsh-abbrev-alias"
zplug "peterhurford/up.zsh"
zplug "jimeh/zsh-peco-history"
zplug "catppuccin/zsh-syntax-highlighting"
# Spaceship setup
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

zplug load
autoload -U promptinit; promptinit

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

