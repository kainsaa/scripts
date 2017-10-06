#install brew & oh-my-zsh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


brew install caskroom/cask/iterm2
cd $HOME/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

#install fonts powerline
cd #back to home!
# clone copy from - https://github.com/powerline/fonts
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
#install fonts powerline

cd #back to home!
#install z
brew install wget
wget https://raw.githubusercontent.com/rupa/z/master/z.sh
chmod +x z.sh
sed -i '. ~/z.sh' .zshrc

#alias
#add alias in this file
cat alias.txt >> .zshrc

#bash-it
#speedtest & speedtest

wget https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py
chmod u+x speedtest.py
