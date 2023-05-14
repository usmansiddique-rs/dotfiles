# i3 Tiling Window Manager

To setup this config perform the following steps:

-   install the following packages:
```bash
sudo apt install pactl volumeicon-alsa playerctl light feh arandr lxappearence rofi compton i3blocks
```
<!-- sudo apt install scrot imagemagick dbus -->

| Package      | Description                         |
| :----------- | :---------------------------------- |
| pactl        | enable volume key functionality     |
| volumeicon   | add volume icon                     |
| playerctl    | enable multimedia key functionality |
| light        | enable screen brightness            |
| feh          | set wallpapers                      |
| arandr       | configure screen resolutions        |
| lxappearence | change GTK system config            |
| rofi         | dmenu alternative app launcher      |
| compton      | make windows transparent            |
| i3blocks     | configuring i3 status bar           |
<!-- | scrot        | screen capturing application for transparent lockscreen | -->
<!-- | imagemagick  | for editing digital images                              | -->
<!-- | dbus         | to pase spotify on lockscreen                           | -->

<!-- * ========================================== valid configs -->

#### 1. Install volume control
```bash
mkdir -p ~/.config/volumeicon
cp -rv ./volumeicon ~/.config/volumeicon
```

#### 2. Setup brightness control
```bash
sudo apt install light
sudo chmod +s /usr/bin/light
```

#### 3. Replace dmenu with rofi
-   Rofi enabled by default in config. Simply copy and paste teh rof config.
```bash
cp -rv ./rofi/ ~/.config/
```

<!-- setup polybar -->

#### 4. Install catppuccine themes for:
1. GTK
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

4. Gedit
    -   Git repository: [here](https://github.com/catppuccin/gedit)
    -   **How to install**
        -   clone the repo.
        -   run `./install.py`
        -   set favourite theme in gedit preferences.
    -   Preferred theme: Catppuccin Mocha

5.  Rofi
    -   Git repository: [here](https://github.com/catppuccin/rofi.git)
    -   **How to install**
        -   clone the repo

### 5. Copy the entire i3 config folder in `~/.config`
```bash
cp -rv $(git rev-parse --show-toplevel)/i3 ~/.config
```





<!-- ! ========================================== incorrect config  -->

#### Modify lockscreen
-   Download the lock icon from [this](https://www.iconfinder.com/icons/299105/lock_icon) page.
```bash
wget https://www.iconfinder.com/icons/299105/download/png/512 ~/Pictures/lock_icon.png
cp -rv i3/lockscreen.sh ~/.config/i3
chmod +x ~/.config/i3/lockscreen.sh
```

<!-- TODO: ========================================== correct config but will add in final draft later -->

#### Moka icon theme
    -   [Web page](https://snwh.org/moka/download)
    -   **How to install**
    ```bash
    sudo add-apt-repository -u ppa:snwh/ppa
    sudo apt update
    sudo apt install moka-icon-theme
    ```