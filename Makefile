DOTFILES_EXCLUDES := .git .gitmodules .gitignore
DOTFILES_TARGET   := $(wildcard .??*)
DOTFILES_FILES    := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))

all: install

help:
	@echo "make list           #=> Show file list for deployment"
	@echo "make update         #=> Fetch changes for this repo"
	@echo "make deploy         #=> Create symlink to home directory"
	@echo "make init           #=> Setup environment settings"
	@echo "make install        #=> Run make update, deploy, init"
	@echo "make clean          #=> Remove the dotfiles and this repo"

list:
	@$(foreach val, $(DOTFILES_FILES), ls -dF $(val);)

update:
	git pull origin master
	git submodule init
	git submodule update
	git submodule foreach git pull origin master

deploy:
	@echo '==> Start to deploy dotfiles to home directory.'
	@echo ''
	@$(foreach val, $(DOTFILES_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

init:
	@DOTPATH=$(PWD) bash ./init/init.sh

install: update deploy init
	@exec $$SHELL

clean:
	@echo 'Remove dot files in your home directory...'
	@-$(foreach val, $(DOTFILES_FILES), rm -vrf $(HOME)/$(val);)
	-rm -rf $(PWD)
