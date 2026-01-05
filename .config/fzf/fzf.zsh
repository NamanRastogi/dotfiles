# Setup fzf
# ---------
if [[ ! "$PATH" == *$HOME/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}$HOME/.fzf/bin"
fi

# Auto-completion
# ---------------
# MacOS
# [[ $- == *i* ]] && source "$HOME/.fzf/shell/completion.zsh" 2> /dev/null
# Archlinux
[[ $- == *i* ]] && source /usr/share/fzf/completion.zsh 2> /dev/null
# Ubuntu
# [[ $- == *i* ]] && source /usr/share/doc/fzf/examples/completion.zsh 2> /dev/null

# Key bindings
# ------------
# MacOS
# source "$HOME/.fzf/shell/key-bindings.zsh"
# Archlinux
source /usr/share/fzf/key-bindings.zsh
# Ubuntu
# source /usr/share/doc/fzf/examples/key-bindings.zsh

# Customization
export FZF_DEFAULT_COMMAND='fd --type f --hidden'
export FZF_DEFAULT_OPTS='--no-height'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'batcat {}'"
export FZF_ALT_C_COMMAND='fd --type d . --hidden'
export FZF_ALT_C_OPTS="--preview 'eza --tree --level=2 {}'"
