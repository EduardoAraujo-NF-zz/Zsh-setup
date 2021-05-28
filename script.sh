sudo pacman -S zsh wget
yay -S --noconfirm oh-my-zsh zsh-theme-powerlevel10k-git
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

chsh -s $(which zsh)
chsh -s /bin/zsh

sudo cp .zshrc ~/
sudo cp .p10k.zsh ~/
sudo mkdir ~/.oh-my-zsh/
sudo cp .oh-my-zsh/* ~/.oh-my-zsh/
