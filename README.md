# Dotfiles Management using Git Bare Repo

## Install the following tools on your machine
| Tool | Command to install | Comments |
|---|---|--|
| Git                                                   | `sudo apt install git` | |
| Zsh                                                   | `sudo apt install zsh` | |
| GNU Stow                                              | `suto apt install stow` | |
| [Oh My Posh](https://ohmyposh.dev/docs/installation/linux) | | |
| [zsh-syntax-highlighting ](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#in-your-zshrc) | `git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting` | |
| [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#manual-git-clone) | `git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions` | |
| [eza](https://github.com/eza-community/eza/blob/main/INSTALL.md#debian-and-ubuntu) | | |
| [tmux](https://github.com/tmux/tmux/wiki)             | `sudo apt install tmux` | |
| [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm#installation) | | |
| [fzf](https://github.com/junegunn/fzf)                | `sudo apt install fzf` | |
| [BAT](https://github.com/sharkdp/bat)                 | `sudo apt install bat` | `ln -s <batcat location> /usr/local/bin/bat` |
| [fd-find](https://github.com/sharkdp/fd)              | `sudo apt install fd-find` | `ln -s <fdfind location> /usr/local/bin/fd` |
| [fastfetch](https://github.com/fastfetch-cli/fastfetch) | | |
| [vim-plug](https://github.com/junegunn/vim-plug#installation)      | | |


## Copy your dotfiles onto a new system

1. Clone the git repository.

    ```sh
    cd ~
    git clone https://github.com/NamanRastogi/.dotfiles.git
    ```

1. Stow the files from `.dotfiles` directory to its parent directory (i.e. `~` directory).

    ```sh
    cd ~/.dotfiles
    stow .
    ```


## Reference
https://www.youtube.com/watch?v=y6XCebnB9gs
