# Path to your oh-my-zsh installation.
export ZSH="$HOME/.dotfiles/.oh-my-zsh"

# Load the shell dotfiles, and then some:
for file in ~/.dotfiles/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
source $DOTFILES/.zplug/init.zsh
source $ZSH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh Plugins using zplug 
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "paulmelnikow/zsh-startup-timer"
zplug "tysonwolker/iterm-tab-colors"
zplug "desyncr/auto-ls"
zplug "momo-lab/zsh-abbrev-alias"
zplug "rawkode/zsh-docker-run"
zplug "arzzen/calc.plugin.zsh"
zplug "peterhurford/up.zsh"
zplug "jimeh/zsh-peco-history"
  

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

