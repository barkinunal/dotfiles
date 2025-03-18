echo "Install zsh"
apt-get install zsh

echo "Install nvim"
apt-get install nvim

echo "Move nvim config file to .config"
cp -r nvim/ ~/.config/

echo "Move zshrc to the right place"
cp zsh/.zshrc ~/


