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

# Setup alias to use `config` instead of `git` to deal with configuration repo
alias config='/usr/bin/git --git-dir=/home/matt/.cfg/ --work-tree=/home/matt
