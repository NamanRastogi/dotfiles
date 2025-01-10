# oh-my-posh
export PATH=$PATH:~/.local/bin
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/config.toml)"

# Terminal History
source ~/.config/zsh/history.zsh

# Keybindings for up and down arrow to search through the history
source ~/.config/zsh/key-bindings.zsh

# Set Color
export TERM='tmux-256color'

# zsh Plugins
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf
[ -f ~/.config/fzf/fzf.zsh ] && source ~/.config/fzf/fzf.zsh
bindkey "ç" fzf-cd-widget  # For MacOS

# bat
export BAT_CONFIG_PATH="$HOME/.config/bat/config"

# Aliases
alias ls='eza -aF --sort=Name --group-directories-first'
alias ll='eza -alF --sort=Name --group-directories-first --header'
alias cat='batcat'

# Run fastfetch
fastfetch
