################################## Git
######################## branch in prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}
######################## command auto complete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

################################## Calculator
#calc(){ awk "BEGIN{ print $* }" ;}

################################## Disable PC Beep
xset -b

################################## ssh-agent
# eval $(ssh-agent)

################################## Exports
######################## PS1
Cyan='\[\e[0;36m\]'
Yellow='\[\e[1;33m\]'
Red='\[\e[0;31m\]'
Green='\[\e[0;32m\]'
Off='\[\e[m\]'
export PS1="\$(if [[ \$? == 0 ]]; then echo \"$Green\$?\"; else echo \"$Red\$?\"; fi) $Cyan\A $Yellow\w $Green\`parse_git_branch\`\n$Red\\\$$Off "
######################## Defaults
export TERMINAL="urxvt -rv -tr -sh 11 +sb -fn 'xft:Dejavu Sans Mono:book:pixelsize=11'"
export EDITOR="gedit"
######################## ls colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
######################## PATHs
export PATH=$PATH:~/.local/bin
#export PATH=$PATH:~/.gem/ruby/2.1.0/bin
export PATH=/usr/local/heroku/bin:$PATH
######################## XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

################################## Aliases
######################## ls
alias ls='ls -F --color=auto'
alias la='ls -a'
alias lal='ls -al'
alias ll='ls -l'
######################## Pacman
alias pacman="pacman --color auto"
alias pacI="sudo pacman -S"
alias pacS="pacman -Ss"
alias pacR="sudo pacman -R"
######################## Funsies
alias hacktheplanet="sudo pacman -Syu"
alias yogurt='yaourt'
alias oops="!! | less"
alias frak="sudo !!"
######################## Singles
alias t="$TERMINAL"
alias x="startx"
alias v="vim"
alias g="lynx www.google.com"
alias w="killall -SIGUSR1 wallchanger && wallchanger &"
alias p="mpv"
######################## Git
alias gs="git status"
alias gl="git log"
alias gp="git push"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gf="git pull"
alias gpo="git push origin"
alias gpom="git push origin master"
######################## Misc
alias shuf="mpv --shuffle"
alias bat="watch upower --dump"
alias ing="ping -c 3 8.8.8.8"

################################## RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$HOME/.rvm/gems:$PATH"

################################## 38Z
#source "/home/tina/workspace/38z/.38z.env"
#source "/home/tina/workspace/38z/.profile"

