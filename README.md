# TerminalSetup

## Setup

### Install fonts (Optional)

Powerlevel10k doesn't require custom fonts but can take advantage of them if they are available.

Download these four ttf files:

- MesloLGS NF Regular.ttf
- MesloLGS NF Bold.ttf
- MesloLGS NF Italic.ttf
- MesloLGS NF Bold Italic.ttf

Double-click on each file and click "Install". This will make `MesloLGS NF` font available to all
applications on your system. Configure your terminal to use this font:

- **iTerm2**: Type `p10k configure` and answer `Yes` when asked whether to install
  _Meslo Nerd Font_. Alternatively, open _iTerm2 → Preferences → Profiles → Text_ and set _Font_ to
  `MesloLGS NF`.
- **Apple Terminal**: Open _Terminal → Preferences → Profiles → Text_, click _Change_ under _Font_
  and select `MesloLGS NF` family.

## Main Setup

```
cd TermainalSetup
bash setup.sh
```

### Re-configuration

Type `p10k configure` if the configuration wizard doesn't start automatically or to start configuration again.

## Recipe

### 1. Navigate into folder

```
cd TermainalSetup
```

### 2. Unzip Dependencies

```
open powerlevel10k.zip
open zsh-autocomplete.zip
```

### 3. Create folder for plugins

```
mkdir ~/plugins
```

### 4. Move files

```
mv powerlevel10k ~/plugins
mv zsh-autocomplete ~/plugins
mv .vimrc ~/.vimrc
mv .zshrc ~/.zshrc
```

### 5. Restart Terminal
