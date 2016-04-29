##
echo '#ENTER .bashrc'
OS=`uname -o`

## Load Specification for each OS
echo "##OS is ${OS}"
if [ ${OS} == "Cygwin" ]; then
  echo '##START  LOAD .bashrc_cygwin'
  source ${HOME}/.bashrc_cygwin
  echo '##FINISH LOAD .bashrc_cygwin'
else
  echo '##START  LOAD .bashrc_linux'
  source ${HOME}/.bashrc_linux
  echo '##FINISH LOAD .bashrc_linux'
fi


# Alias definitions.
if [ -f ${HOME}/.bash_aliases ]; then
  echo '##START  LOAD .bash_alias'
  source ${HOME}/.bash_aliases
  echo '##FINISH LOAD  .bash_alias'
fi

# Functions definitions
if [ -f ${HOME}/.bash_funcs ]; then
  echo '##START  LOAD .bash_funcs'
  source ${HOME}/.bash_funcs
  echo '##FINISH LOAD .bash_funcs'
fi

if [ -f ${HOME}/.gradle-tab-completion.bash ]; then
  echo '##START  LOAD .gradle-tab-completion.bash'
  source ${HOME}/.gradle-tab-completion.bash
  echo '##FINISH LOAD .gradle-tab-completion.bash'
fi

# export
echo '##START  SETTING PATH'
export PATH=${HOME}/dotfiles/gnome-terminal-colors-solarized/:$PATH
export PATH=${HOME}/Android/Sdk/tools:$PATH
export PATH=${HOME}/Android/Sdk/platform-tools/:$PATH


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Golang
export GOPATH="${HOME}/.go"
export PATH="${GOPATH}/bin:${GOPATH}/adb-peco/bin:$PATH"
export PATH="/opt/pidcat:$PATH"
echo '##FINISH SETTING PATH'

# screen
if [ $TERM != "screen" ]; then
  if [ $TERM != "dumb" ]; then
    screen -e ^z^z
  fi
fi

echo '# DONE .bashrc'
