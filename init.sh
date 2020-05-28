#!/bin/bash

if grep -q "source \$HOME/.hank/shrc" $HOME/.bashrc; then
	echo "bashrc is linked in ~/.bashrc, skip"
else
	echo "bashrc is not linked in ~/.bashrc"
	echo "source \$HOME/.hank/shrc" >> $HOME/.bashrc
	echo "Linked!"
fi

if grep -q "source \$HOME/.hank/shrc" $HOME/.zshrc; then
	echo "bashrc is linked in ~/.zshrc, skip"
else
	echo "bashrc is not linked in ~/.zshrc"
	echo "source \$HOME/.hank/shrc" >> $HOME/.zshrc
	echo "Linked!"
fi
