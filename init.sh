#!/bin/bash
if [ -d $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
	echo "zsh-autosuggestions installed, skip"
else
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	echo "plugins+=(zsh-autosuggestions)" >> $HOME/.zshrc
fi

if [ -d $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then
	echo "zsh-syntax-highlighting installed, skip"
else
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	echo "plugins+=(zsh-syntax-highlighting)" >> $HOME/.zshrc
fi

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

ln -s $HOME/.hank/vimrc $HOME/.vimrc
