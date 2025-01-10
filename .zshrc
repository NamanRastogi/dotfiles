# oh-my-posh
export PATH=$PATH:~/.local/bin
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/config.toml)"

# Terminal History
# Copied from https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/history.zsh
export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=10000
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # new lines added to the $HISTFILE as soon as they are entered

# Search history using up and down arrow
# Copied from https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/key-bindings.zsh
autoload -U up-line-or-beginning-search
zle -N up-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search  # Start typing + [Up-Arrow] - fuzzy find history forward
autoload -U down-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search  # Start typing + [Down-Arrow] - fuzzy find history backward

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
