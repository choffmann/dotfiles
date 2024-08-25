export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export EDITOR=nvim
export SHELL=/bin/zsh

# fnm
export PATH="/home/choffmann/.local/share/fnm:$PATH"
eval "`fnm env`"
eval "$(fnm env --use-on-cd)"

# tmux
# if [ "$TMUX" = "" ]; then tmux; fi

# alias
alias vim=nvim
alias clr=clear
alias k=kubectl
alias kctx=kubectx
alias kns="kubectl config set-context --current --namespace "
alias spotify="chromium --profile-directory=Default --app-id=pjibgclleladliembfgfagdaldikeohf --app-launch-url-for-shortcuts-menu-item=https://open.spotify.com/intl-de" 
alias open=xdg-open
alias dotfiles="cd ~/dotfiles"
alias lg="lazygit"
alias hsfl-vpn="/opt/cisco/anyconnect/bin/vpnui"

alias reboot="sudo reboot now"
alias shutdown="sudo shutdown now"
alias hypr-logout="hyprctl dispatch exit"
alias display="nwg-displays"

alias tpp="~/dotfiles/scripts/tpp_ngrok.sh"
alias tpp-kill="pkill ngrok"

alias tmux-sessionizer="~/dotfiles/scripts/tmux-sessionizer.sh"

alias clip="xclip -selection clipboard"

# fzf
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

export PATH="$PATH:$(yarn global bin)"
export PATH=~/.cargo/bin:$PATH
export PATH=/usr/local/texlive/2023/bin/x86_64-linux/:$PATH

# Star Ship
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# fnm
export PATH="/home/choffmann/.local/share/fnm:$PATH"
eval "`fnm env`"

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# gem
export GEM_HOME="/home/choffmann/.local/share/gem/ruby/3.0.0"
export PATH="$GEM_HOME/bin:$PATH"

# elixir asdf
. /opt/asdf-vm/asdf.sh

# golang
export PATH="$(go env GOPATH)/bin:$PATH"

source /home/choffmann/dotfiles/scripts/ssh_startup.sh


# yazi
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
