# dotfiles

Das Programm [GNU Stow](https://www.gnu.org/software/stow/) synchronisiert die Dateien im Repository lokal. Das Repository muss sich im Home-Verzeichnis befinden.

## Installation
`stow` sollte installiert sein.

```bash
sudo pacman -S stow
```

Anschließend kann das Repository geklont und mit `stow` auf den lokalen Home-Pfad ausgerollt werden.

```bash
cd ~
git clone git@github.com:choffmann/dotfiles.git
cd ~/dotfiles
stow --adopt .
```
