#!/bin/zsh

if [[ ! -d "./Shared/vscode" ]]
then
	echo "File doesn't exist. Creating"
	mkdir ./Shared
	mkdir ./Shared/vscode
  echo "File created"
fi

echo "Syncing files"
cp  ~/Library/Application\ Support/Code/User/settings.json ./Shared/vscode/settings.json

cp ~/Library/Application\ Support/Code/User/keybindings.json ./Shared/vscode/keybindings.json

git add -u ./Shared
echo "Synced"
