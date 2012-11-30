#!/bin/bash
cd "$(dirname "$0")"
git pull
function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "sync.sh" --exclude "README.md" -av . ~
}

function setGit() {
	echo "--------------------------------------------------------"
	echo "   git configuration"
	echo "--------------------------------------------------------"

	# set git user name
	read -p "git user name? " name
	# set git email
	read -p "git user.email? " email

	echo

	# execute git configuration
	echo "execute: git config --global user.name \"${name}\""
	git config --global user.name "${name}"

	echo execute: git config --global user.email "${email}"
	git config --global user.email "${email}"
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
		setGit
	fi
fi
unset doIt
source ~/.bash_profile