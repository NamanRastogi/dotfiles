# Setup fzf
# ---------
if [[ ! "$PATH" == */home/wsl/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/wsl/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/wsl/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/wsl/.fzf/shell/key-bindings.zsh"

# Customization
export FZF_DEFAULT_COMMAND='fd --type f --hidden'
export FZF_DEFAULT_OPTS='--no-height'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"
export FZF_ALT_C_COMMAND='fd --type d . --hidden'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"