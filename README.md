# TerminalSetup

## Setup

### Install fonts (Optional)

Powerlevel10k doesn't require custom fonts but can take advantage of them if they are available.

Download these four ttf files:

- MesloLGS NF Regular.ttf
- MesloLGS NF Bold.ttf
- MesloLGS NF Italic.ttf
- MesloLGS NF Bold Italic.ttf

Double-click on each file and click "Install". This will make MesloLGS NF font available to all applications on your system. Configure your terminal to use this font:

- Term2: Type p10k configure and answer Yes when asked whether to install Meslo Nerd Font. Alternatively, open iTerm2 → Preferences → Profiles → Text and set Font to MesloLGS NF.
- Apple Terminal: Open Terminal → Preferences → Profiles → Text, click Change under Font and select MesloLGS NF family.

## Main Setup

```
cd TermainalSetup
bash setup.sh
```

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
