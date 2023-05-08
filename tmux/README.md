# Tmux

To setup this config perform the following steps:

```bash
# copy the folder tmux in ~/.config
cp -rv $(git rev-parse --show-toplevel)/tmux ~/.config

# cd to tmux config
cd ~/.config/tmux

# clone the repo:
git clone https://github.com/tmux-plugins/tpm.git ~/.config/tmux/plugins/tpm 
