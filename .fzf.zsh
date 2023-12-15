# Setup fzf
# ---------
if [[ ! "$PATH" == *$HOME/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}$HOME/.fzf/bin"
fi

# Auto-completion
# ---------------
# [[ $- == *i* ]] && source "$HOME/.fzf/shell/completion.zsh" 2> /dev/null
[[ $- == *i* ]] && source /usr/share/doc/fzf/examples/completion.zsh 2> /dev/null

# Key bindings
# ------------
# source "$HOME/.fzf/shell/key-bindings.zsh"
source /usr/share/doc/fzf/examples/key-bindings.zsh

# Customization
export FZF_DEFAULT_COMMAND='fd --type f --hidden'
export FZF_DEFAULT_OPTS='--no-height'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat {}'"
export FZF_ALT_C_COMMAND='fd --type d . --hidden'
export FZF_ALT_C_OPTS="--preview 'exa --tree --level=2 {}'"
