# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
# export TERM='screen-256color'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fzf
[ -f ~/.config/fzf.zsh ] && source ~/.config/fzf.zsh
bindkey "ç" fzf-cd-widget  # For MacOS

# bat
export BAT_CONFIG_PATH="$HOME/.config/bat/config"

typeset -g POWERLEVEL9K_SHORTEN_STRATEGY=truncate_with_folder_marker

# Aliases
alias ls='eza -aF --group-directories-first'
alias ll='eza -lFa --sort=Name --group-directories-first --header'
alias cat='bat'
alias dotfiles_git='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dotfiles_lazygit='lazygit --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Run neofetch
export POWERLEVEL9K_INSTANT_PROMPT=quiet
neofetch

