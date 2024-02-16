# dotfiles

Das Programm [GNU Stow](https://www.gnu.org/software/stow/) synchronisiert die Dateien im Repository lokal. Das Repository muss sich im Home-Verzeichnis befinden.

## Neuinstallation

### Basics
```bash
sudo pacman -S git stow kitty 
```

### Terminal
```bash
# Packages
sudo pacman -S starship fnm tmux fzf zoxide unzip fzf wget

# Oh my zsh
sh -c "$(curl -fsSL https://install.ohmyz.sh/)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#fnm
curl -fsSL https://fnm.vercel.app/install | bash
```

### tmux
```bash
sudo pacman -S tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
`<leader> + I` Installiert tmp plugins

### Node.js, npm und yarn
```bash
sudo pacman -S nodejs npm
npm install -g yarn
yarn set version berry
```

### NeoVim
```
sudo pacman -S ripgrep lazygit
```
