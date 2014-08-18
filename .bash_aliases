## primitive
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias xopen='xdg-open'

## android
alias abc='adb -s 358674049513815 backup -apk -shered -f jp.choikake_`date +"%Y%m%d_%H%M%S"`.bk jp.choikake'
alias abs='adb -s 358674049513815 backup -apk -shered -f jp.memorylovers.shytter_`date +"%Y%m%d_%H%M%S"`.bk jp.memorylovers.shytter'
alias auc='adb -s 358674049513815 uninstall jp.choikake'
alias aus='adb -s 358674049513815 uninstall jp.memorylovers.shytter'

ar () {
if [ $# -ne 1 ]; then
  echo "Usage:: ar <restore-file>"
elif [ ! -e $1 ]; then
  echo "$1 dose not exist."
else
  adb -s 358674049513815 restore $1
fi
}

## bashrc
alias ca='cat ~/.bash_aliases'
alias va='vim ~/.bash_aliases'
alias rr='source ~/.bashrc'
alias vr='vim ~/.bashrc'
alias vv='vim ~/.vimrc'

## solarized
alias sdark='set_dark.sh'
alias slight='set_light.sh'

## git
alias git-ci='git commit'
alias git-pu='git push'
alias git-st='git status'
alias git-di='git diff'
alias git-pl='git pull'
