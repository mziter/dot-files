###########################################################
# ANTIGEN
###########################################################
source $HOME/scripts/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle cargo
antigen bundle kennethreitz/autoenv

# Syntax highlighting module
antigen bundle zsh-users/zsh-syntax-highlighting

# Apply at end
antigen apply
###########################################################
# AUTO NEW USER SETTINGS
###########################################################

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/matt/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
[ -f ~/.fzf.colors ] && source ~/.fzf.colors

###################################
# BASE16
###################################
BASE16_SHELL="$HOME/.base16-manager/chriskempson/base16-shell"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

###################################
# ALIASES
###################################
# Setup alias to use `config` instead of `git` to deal with configuration repo
alias config='/usr/bin/git --git-dir=/home/matt/.cfg/ --work-tree=/home/matt'

# Use exa instead of ls
alias ls=exa
# Use bat instead of cat
alias cat=bat
# use fd instead of find
alias find=fd
# use ripgrep instead of grep
alias grep=rg

###################################
# CARGO
source $HOME/.cargo/env
