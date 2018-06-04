# DotFiles

## Make your DotFiles work

After cloning repository, you need to provide a way that files will be visible. 
You can just move them to specified location or create a links.

- For files:

`$ ln <target> <link_name>`

- For directories:

`$ ln -s <target> <link_name>`

## Vim configuration

1. Create directory where Vim plugins will be stored.

`$ mkdir ~/.vim/bundle`

2. Clone plugin manager for Vim like Vundle.

`$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

3. Open .vimrc file with text editor like Vim.

`$ vim ~/.vimrc`

4. type Vim command to install rest of plugins, it can take few minutes.

`:PluginInstall`

## Tmux configuration

After linking Tmux files you need to rerun your terminal sesion, or type:


`$ tmux source-file <path_to_link>`
