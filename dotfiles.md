# Dotfiles Management using Git Bare Repo


## Fist time initialization

1. Create `.dotfiles` directory in `HOME` directory.
    ```sh
    ❯ cd $HOME
    ❯ mkdir .dotfiles
    ```

2. Initialize git bare repository
    ```sh
    ❯ cd .dotfiles
    ❯ git init --bare
    ❯ cd $HOME
    ```

3. Create a new alias for the git for this "git bare" repository. Add the following line in your `.bashrc` or `.zshrc` file depending upon what you use.
    ```sh
    alias git_dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    ```
    Or trun the following command to do that automatically.
    ```sh
    ❯ echo "alias git_dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
    ```

4. Run the following commands.
    ```sh
    ❯ git_dotfiles config --local status.showUntrackedFiles no
    ```

5. Add all the files you want to track in git. For example to add `.bashrc` file, run the following command.
    ```sh
    ❯ cd $HOME
    ❯ git_dotfiles config status
    ❯ git_dotfiles add .bashrc
    ❯ git_dotfiles commit -m "Add bashrc."
    ❯ git_dotfiles push
    ```
    **Note**: This command doesn't depend upon what directory you are in.


## Reference
https://www.atlassian.com/git/tutorials/dotfiles
