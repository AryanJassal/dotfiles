# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

source /usr/share/zsh/scripts/zplug/init.zsh

# zsh auto completion
zplug "lib/completion",      from:oh-my-zsh

# setups up histoyr
zplug "lib/history",         from:oh-my-zsh

# Color highlighting in terminal
zplug "zdharma/fast-syntax-highlighting"

# Auto suggests commands based on history
zplug "zsh-users/zsh-autosuggestions"

# Install plugins if there are plugins that have not been installed (copied from the zplug readme)
if ! zplug check --verbose; then
     printf "Install? [y/N]: "

     if read -q; then
	echo; zplug install
     fi
fi

# Then, source plugins and add commands to $PATH
zplug load

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='lvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ls='exa --long --header --icons --sort=type'
alias tree='exa --tree --level 3'
alias scrot='scrot ~/Screenshots/%b%d:%H%M%S.png --silent'
alias pacman='pacman --color=auto'
alias yay='yay --color=auto'
alias u='yay -Syu --noconfirm --color=auto'
leedit() { neovide --multigrid --neovim-bin /home/aryanj/.local/bin/lvim "$@" && exit; }
eedit() { neovide --multigrid "$@" && exit; }
alias nedit='neovide --multigrid'
alias ledit='neovide --multigrid --neovim-bin /home/aryanj/.local/bin/lvim'
alias edite='leedit'
alias edit='ledit'
alias cd..="cd .."
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# so sudo plays well with the aliases
alias sudo='sudo '

[ -z "$PS1" ] || neofetch
export PATH="/home/aryanj/.local/bin:$PATH"
eval "$(starship init zsh)"
