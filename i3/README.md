# i3 Tiling Window Manager

To setup this config perform the following steps:

-   install the following packages:
```bash
sudo apt install pactl playerctl xbacklight feh arandr lxappearence rofi compton
```

| Package      | Description                         |
| :----------- | :---------------------------------- |
| pactl        | enable volume key functionality     |
| playerctl    | enable multimedia key functionality |
| xbacklight   | enable screen brightness            |
| feh          | set wallpapers                      |
| arandr       | configure screen resolutions        |
| lxappearence | change GTK system config            |
| rofi         | dmenu alternative app launcher      |
| compton      | make windows transparent            |




-   copy the folder i3 in ~/.config
```bash
cp -rv $(git rev-parse --show-toplevel)/i3 ~/.config
```
- use lxappearence to change:
gtk theme:
gtk font:
gtk icon theme:
mouse cursor:



## NOTES

### Install catppuccine theme for:

1.  GTK
    -   Git repository: [here](https://github.com/catppuccin/gtk)
    -   **How to install**
        ```bash
        mkdir ~/.themes
        git clone --recurse-submodules git@github.com:catppuccin/gtk.git gtk
        virtualenv -p python3 venv
        source venv/bin/activate
        pip install -r requirements.txt
        python install.py all -a all # build all possible variations
        ```

2.  Google Chrome
    -   Git repository: [here](https://github.com/catppuccin/chrome)
    -   [Catppuccin Chrome Theme - Frappe](https://chrome.google.com/webstore/detail/catppuccin-chrome-theme-f/olhelnoplefjdmncknfphenjclimckaf)

3.  Gnome Terminal
    -   Git repository: [here](https://github.com/catppuccin/chrome)
    -   **How to install**
        -   clone the repo.
        -   run `./install.py`
        -   set favourite theme in gnome-terminal preferences.
    -   Preferred theme: Catppuccin Mocha

4.  Alacritty
    -   Git repository: [here](https://github.com/catppuccin/alacritty)
    -   **How to install**
        -   clone the repo:
        -   import your respective config in the yaml file.

5. Gedit
    -   Git repository: [here](https://github.com/catppuccin/gedit)
    -   **How to install**
        -   clone the repo.
        -   run `./install.py`
        -   set favourite theme in gedit preferences.
    -   Preferred theme: Catppuccin Mocha

6.  Moka icon theme
    -   [Web page](https://snwh.org/moka/download)
    -   **How to install**
    ```bash
    sudo add-apt-repository -u ppa:snwh/ppa
    sudo apt update
    sudo apt install moka-icon-theme
    ```