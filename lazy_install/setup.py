import os, subprocess, sys
print("### lazy install kainsaa way! ###")
# instalacion de brew & oh-my-zsh
os.system("sh base_install.sh")

INSTALL = "brew install " #const brew

dev_tools = ('virtualenv','z','caskroom/cask/virtualbox','terminal-notifier','caskroom/cask/github-desktop')
network = ('nmap','wget','htop')
game_other=('caskroom/cask/openemu')
software=('python3','caskroom/cask/google-chrome','askroom/cask/calibre','caskroom/cask/atom','caskroom/cask/keka')

program=dev_tools+network+game_other+software

for program in package_list:
    os.system(INSTALL+program)
