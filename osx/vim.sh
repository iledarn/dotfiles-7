echo "Installing macvim using brew. System ruby is required, make sure you're using it."
echo "Refer to https://github.com/Homebrew/homebrew/issues/23938#issuecomment-34774165"
read -p "Press a key."
brew reinstall macvim --custom-icons --override-system-vim --with-cscope --with-lua --with-python3
brew linkapps