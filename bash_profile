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
export PS1="\e[0;36m\A\e[m \e[1;33m\w\e[m\[\033[32m\]\$(parse_git_branch)\[\033[00m\] \n\e[0;31m\\$\e[m "
######################## Defaults
export TERMINAL="uxterm -rv +sb -fa 'Dejavu Sans Mono:Book:pixelsize=11' -bw 0"
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
alias pacS="sudo pacman -S"
alias pacR="sudo pacman -R"
alias pacU="sudo pacman -Syu"
######################## Singles
alias t="$TERMINAL"
alias x="startx"
alias v="vim"
alias g="lynx www.google.com"
alias w="wallchanger"

################################## PATHs
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.gem/ruby/2.1.0/bin
export PATH=/usr/local/heroku/bin:$PATH

################################## RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
