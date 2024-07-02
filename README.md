# My Neovim Configuration

This repository contains my Neovim configuration. It is based on 💤 LazyVim see => [documentation](https://lazyvim.github.io/installation).


## Setup

1. Clone this repository:
    ```sh
    git clone https://github.com/your-username/your-neovim-config.git ~/.config/nvim
    ```

2. Install **GitHub Copilot**:
- ### Requires:
    - Node.js
Clone copilot.vim repository:
```sh
git clone https://github.com/github/copilot.vim.git \
  ~/.config/nvim/pack/github/start/copilot.vim
```

Start Neovim and invoke `:Copilot setup`

Suggestions are displayed inline and can be accepted by pressing the tab key. See `:help copilot` for more information.

3. This configuration is set to work with [Kitty](https://sw.kovidgoyal.net/kitty/) terminal emulator and [Tmux](https://github.com/tmux/tmux/wiki).
You can find my configuration files for Kitty and Tmux in this repository.
