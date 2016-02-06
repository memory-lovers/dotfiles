##
OS=`uname -o`

## Load Specification for each OS
if [ ${OS} == "Cygwin" ]; then
  source ${HOME}/.bashrc_cygwin
else
  source ${HOME}/.bashrc_linux
fi


# Alias definitions.
if [ -f ${HOME}/.bash_aliases ]; then
    source ${HOME}/.bash_aliases
fi

# Functions definitions
if [ -f ${HOME}/.bash_funcs ]; then
    source ${HOME}/.bash_funcs
fi

if [ -f ${HOME}/.gradle-tab-completion.bash ]; then
  source ${HOME}/.gradle-tab-completion.bash
fi

# export
export PATH=${HOME}/dotfiles/gnome-terminal-colors-solarized/:$PATH
export PATH=${HOME}/Android/Sdk/tools:$PATH
export PATH=${HOME}/Android/Sdk/platform-tools/:$PATH

# screen
#if [ $TERM != "screen" ]; then
#  if [ $TERM != "dumb" ]; then
#    screen -e ^z^z
#  fi
#fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Golang
export GOPATH="${HOME}/.go"
export PATH="${GOPATH}/bin:${GOPATH}/adb-peco/bin:$PATH"
export PATH="/opt/pidcat:$PATH"

