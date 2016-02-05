## primitive
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

## my alias command
alias xopen='xdg-open'
alias excel='libreoffice'

## android
alias pidcat='pidcat.py'
alias adb='adbp'
ADB_BIN="${ANDROID_HOME}/platform-tools/adb"
ADBP_BIN="/home/fujiuray/.go/adb-peco/bin/adbp"
alias adb-restart="sudo ${ADB_BIN} kill-server && sudo ${ADB_BIN} start-server"
alias adb-list="adb shell pm list package | sed -e s/package:// | peco"

alias uninstallapp='adbp shell pm list package | sed -e s/package:// | peco | xargs adbp uninstall'
alias installapp='find -name "*.apk" | peco | xargs adb install -r'
alias backupapp="adbp shell pm list package | sed -e s/package:// | peco | xargs -I{} adbp backup -apk -shered -f {}_`date +'%Y%m%d_%H%M%S'`.bk {}"

## ASUS MemoPad
#DEV_ID='E9OKCY036916'
## SHARP AQUOS PHONE SH-02E
DEV_ID='358674049513815'
## NEXUS7
#DEV_ID='0a8322f1'

## for jp.choikake
choikake='jp.choikake'
alias abc="adb -s ${DEV_ID} backup -apk -shered -f ${choikake}_`date +'%Y%m%d_%H%M%S'`.bk ${choikake}"
alias auc="adb -s ${DEV_ID} uninstall ${choikake}.debug"
alias auc-publish="adb -s ${DEV_ID} uninstall ${choikake}"

## for shytter
shytter='jp.memorylovers.shytter.debug'
alias abs="adb -s ${DEV_ID} backup -apk -shered -f ${shytter}_`date +'%Y%m%d_%H%M%S'`.bk ${shytter}"
alias aus="adb -s ${DEV_ID} uninstall ${shytter}"

## for release_now
release_now='jp.memorylovers.release_now'
alias abr="adb -s ${DEV_ID} backup -apk -shered -f ${release_now}_`date +'%Y%m%d_%H%M%S'`.bk ${release_now}"
alias aur="adb -s ${DEV_ID} uninstall ${release_now}.debug"
alias aur-publish="adb -s ${DEV_ID} uninstall ${release_now}"

## for babytuba
babytuba='jp.memorylovers.babytuba.debug'
alias abb="adb -s ${DEV_ID} backup -apk -shared -f ${babytuba}_`date +'%Y%m%d_%H%M%S'`.bk ${babytuba}"
alias aub="adb -s ${DEV_ID} uninstall ${babytuba}"

ar () {
if [ $# -ne 1 ]; then
  echo "Usage:: ar <restore-file>"
elif [ ! -e $1 ]; then
  echo "$1 dose not exist."
else
  adb -s ${DEV_ID} restore $1
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

## vagrant
alias vd='vagrant destroy'
alias vu='vagrant up'
alias vh='vagrant halt'
alias vs='vagrant ssh-config'

alias vr="set -ex | vagrant destroy && rm -rf ~/.ssh/known_hosts && vagrant up | set +ex"

## wine
alias line='wine .wine/drive_c/Program\ Files\ \(x86\)/LINE/LINE.exe'
alias kobito='electron /opt/kobito/resources/app/ > /dev/null 2>&1 &'
