# dotfiles

Das Programm [GNU Stow](https://www.gnu.org/software/stow/) synchronisiert die Dateien im Repository lokal. Das Repository muss sich im Home-Verzeichnis befinden.

## Basics
```bash
sudo pacman -S git stow kitty 
```

## Terminal
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

### SSH Agent
```bash
systemctl --user enable --now ssh-agent
ssh-add <path_to_ssh>
```

## tmux
```bash
sudo pacman -S tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
`<leader> + I` Installiert tmp plugins

## NeoVim
```
sudo pacman -S nvim ripgrep lazygit
```

### Elixir LSP
```bash
sudo pacman -S elixir
yay -S asdf-vm
```

In Mason wird der Language Server installiert. In der Config von `nivm-lsp` muss der Pfad zum Skript angegeben werden, wo nicht `~` oder `$HOME` verwendet werden kann. Somit muss hier der komplette Pfad hinterlegt werden

## Docker / Kubernetes
```
sudo pacman -S docker kubectl k9s kubectx
```
### Docker non-root user
```bash
sudo groupadd docker
sudo usermod -aG docker $USER
```

## Node.js, npm und yarn
```bash
sudo pacman -S nodejs npm
npm install -g yarn
yarn set version berry
```
