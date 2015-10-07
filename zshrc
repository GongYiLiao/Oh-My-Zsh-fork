# use Oh my ZSH
<<<<<<< HEAD
ZSH=$HOME/Programming/ZSH/Oh-My-Zsh-fork
ZSH_THEME="gongyi_kphoen"
=======
ZSH=$HOME/Archives/Programming/ZSH/Oh-My-Zsh
ZSH_THEME="gong-yi"
>>>>>>> f22ea492c7cbd9d39ff286feb215f0c24de9155f
plugins=(git tinypath)
source $ZSH/oh-my-zsh.sh
setopt NO_HUP
setopt NO_CHECK_JOBS 

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
<<<<<<< HEAD
alias ls='ls -FG'
=======
alias ls='ls --color -FG'
>>>>>>> f22ea492c7cbd9d39ff286feb215f0c24de9155f

# default console tools
PAGER=/usr/bin/most 

# dircolors
# source ${HOME}/.dircolors 

# PATH 
export PATH=${PATH}:${HOME}/.local/bin
<<<<<<< HEAD
=======

>>>>>>> f22ea492c7cbd9d39ff286feb215f0c24de9155f
