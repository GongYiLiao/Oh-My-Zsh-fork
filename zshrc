# use Oh my ZSH
ZSH=$HOME/Archives/Programming/ZSH/Oh-My-Zsh
ZSH_THEME="gongyi_kphoen"
plugins=(git tinypath)
source $ZSH/oh-my-zsh.sh
setopt NO_HUP

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/gong-yi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U colors && colors
# PS1="%{$fg_bold[magenta]%}%n%{$fg_bold[cyan]%}@%{$fg_bold[green]%}%m %{$fg_bold[red]%}%1~ %{$fg_bold[blue]%}%* %{$fg_bold[yellow]%}$ %{$reset_color%} "

# alias 
alias ls='ls --color -FG'

# default console tools
PAGER=/usr/bin/most 

# dircolors
source ${HOME}/.dircolors 

# PATH 
export PATH=${PATH}:${HOME}/.local/bin
