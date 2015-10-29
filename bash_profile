################################## Git
######################## branch in prompt
parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}
######################## command auto complete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

################################## Exports
######################## PS1
Cyan='\e[0;36m\]'
Yellow='\e[1;33m\]'
Red='\e[0;31m\]'
Green='\e[32m\]'
Off='\e[m\]'
export PS1="$Cyan\A $Yellow\w $Green\$(parse_git_branch)\n$Red\\$ $Off"
######################## Defaults
export TERMINAL="urxvt -rv -tr -sh 11 +sb -fn 'xft:Dejavu Sans Mono:book:pixelsize=11'"
export EDITOR="gedit"
######################## ls colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

################################## Aliases
######################## ls
alias ls='ls -F --color=auto'
alias la='ls -a'
alias lal='ls -al'
alias ll='ls -l'
######################## Pacman
alias pacI="sudo pacman -S"
alias pacS="sudo pacman -Ss"
alias pacR="sudo pacman -R"
alias pacU="sudo pacman -Syu"
######################## Singles
alias t="$TERMINAL"
alias x="startx"
alias v="vim"
alias g="lynx www.google.com"
alias w="killall -SIGUSR1 wallchanger && wallchanger &"
######################## Git
alias gs="git status"
alias gl="git log"
alias gp="git push"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gf="git pull"
######################## Misc
alias bat="upower --dump | less"

################################## PATHs
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.gem/ruby/2.1.0/bin
export PATH=/usr/local/heroku/bin:$PATH

################################## RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
