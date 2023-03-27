# Hammerspoon Config

My Configuration file for [Hammerspoon](https://github.com/Hammerspoon/hammerspoon).

## Requirements

- Install Hammerspoon `$ brew install --cask hammerspoon`
- Install Python 3.11 `$ brew install python@3.11`
- Install displayplacer `$ brew tap jakehilborn/jakehilborn && brew install displayplacer`

## Features

- Application launching with hyper + key
- "Open new Slack Window"
- Toggle DNS servers with hyper + key
- Toggle lights via [Home Assistant](https://github.com/home-assistant)
- Change display settings

## Manual Setup

Add the `.lua` files from this repository to `~/.hammerspoon`. Then reload your [Hammerspoon](https://github.com/Hammerspoon/hammerspoon) configuration

## Automated Setup

Clone this repository

```bash
git clone https://github.com/TeaRex-coder/hammerspoon-config.git
cd hammerspoon-config
```

### Run The Configurator _(currently broken)_

`$ python configurator.py`
