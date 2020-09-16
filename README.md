# dotfiles

## setup

1. `rm -rf .zsh* .vi* .git* .anyenv .config`
1. `git clone git@github.com:katsukiwataru/dotfiles.git ~/workspace/dotfiles`
1. `cd workspace/dotfiles`
    1. `git submodule foreach git pull`
    1. `git submodule update --init --recursive`
    1. `git submodule update --remote`
1. `./bin/init.sh`
1. `vim -c 'PlugInstall|q'`
1. `vim -c 'CocInstall|q'`

### use
- [starship](https://github.com/starship/starship)
- [anyenv](https://github.com/anyenv/anyenv)
- [vim-plug](https://github.com/junegunn/vim-plug)
- [coc.nvim](https://github.com/neoclide/coc.nvim)
