# Tmux

To setup this config perform the following steps:

```bash
# copy the folder tmux in ~/.config
cp -rv $(git rev-parse --show-toplevel)/tmux ~/.config

# cd to tmux config
cd ~/.config/tmux

# clone the repo: https://github.com/erikw/tmux-powerline
git clone git@github.com:erikw/tmux-powerline.git tmux_powerline

# backup the default.sh config
cd tmux_powerline
cp -rv ./themes/default.sh ./themes/backup_default.sh

# generate config file
./generate_rc.sh

# replace the config file with your own
rm -rf ~/.tmux-powerlinerc.default
cp -rv $(git rev-parse --show-toplevel)/tmux/.tmux-powerlinerc ~/.tmux-powerlinerc
```