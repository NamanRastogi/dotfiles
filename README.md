# Dotfiles Management using Git Bare Repo

## Install the following tools on your machine
| Tool | Command to install | Comments |
|---|---|--|
| Git                                                   | `sudo apt install git` | |
| Zsh                                                   | `sudo apt install zsh` | |
| [Oh My ZSH](https://ohmyz.sh/#install)                | | |
| [PowerLevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh) | | |
| [zsh-syntax-highlighting ](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh) | | |
| [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh) | | |
| [eza](https://github.com/eza-community/eza/blob/main/INSTALL.md#debian-and-ubuntu) | | |
| [tmux](https://github.com/tmux/tmux/wiki)             | `sudo apt install tmux` | |
| [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) | | |
| [fzf](https://github.com/junegunn/fzf)                | `sudo apt install fzf` | |
| [BAT](https://github.com/sharkdp/bat)                 | `sudo apt install bat` | `ln -s <batcat location> /usr/local/bin/bat` |
| [Midnight Commander](https://midnight-commander.org/) | `sudo apt install mc` | |
| [fd-find](https://github.com/sharkdp/fd)              | `sudo apt install fd-find` | `ln -s <fdfind location> /usr/local/bin/fd` |
| [neofetch](https://github.com/dylanaraps/neofetch)    | `sudo apt install neofetch` | |
| [vim-plug](https://github.com/junegunn/vim-plug)      | | |


## Fist time initialization

1. Create `.dotfiles` directory in `$HOME` directory.
    ```sh
    cd $HOME
    mkdir .dotfiles
    ```

1. Initialize git bare repository
    ```sh
    cd .dotfiles
    git init --bare
    cd $HOME
    ```

1. Create a new alias for the git for this "git bare" repository. Add the following line in your `.bashrc` or `.zshrc` file depending upon what you use.
    ```sh
    alias git_dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    ```
    Or trun the following command to do that automatically.
    ```sh
    echo "alias git_dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
    ```

1. Run the following commands.
    ```sh
    git_dotfiles config --local status.showUntrackedFiles no
    ```

1. Add all the files you want to track in git. For example to add `.bashrc` file, run the following command.
    ```sh
    cd $HOME
    git_dotfiles config status
    git_dotfiles add .bashrc
    git_dotfiles commit -m "Add bashrc."
    git_dotfiles push
    ```
    **Note**: This command doesn't depend upon what directory you are in.


## Copy your dotfiles onto a new system

1. Before doing anything, make sure you have your modified git command for git bare repository in place in the current terminal. This is temporary, and it will be overwridden by the same alias in `.zshrc` file.

    ```sh
    alias git_dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    ```

1. We will be cloning the git repo in a directory named `.dotfiles`. We first need to add that to the `.gitignore` file to remove any circular dependency.

    ```sh
    echo ".dotfiles" >> .gitignore
    ```

1. Clone the git repository.

    ```sh
    git clone --bare https://github.com/NamanRastogi/.dotfiles.git $HOME/.dotfiles
    ```

1. Copy files from git repository to `$HOME` directory. It it throws error, backup or delete exisitng files having conflicts and run the command again.

    ```sh
    git_dotfiles checkout
    ```


## Reference
https://www.atlassian.com/git/tutorials/dotfiles
