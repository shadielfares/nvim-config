# Neovim Config 🧑‍💻

This repository contains my personal configuration for Neovim, aimed at enhancing productivity and customizing the Neovim experience.

## Table of Contents

- [Installation](#installation)
- [Features](#features)
- [Key Shortcuts](#key-shortcuts)
- [Plugins](#plugins)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)

## Installation

To use this configuration, follow these steps:

1. Clone the repository to your local machine:
   ```sh
   git clone https://github.com/shadielfares/nvim-config.git ~/.config/nvim
   ```

2. Ensure you have Neovim installed. You can download it from [Neovim's official site](https://neovim.io/).

3. Open Neovim and run `:Lazy install` to install all the plugins specified in the configuration.
4. Sync all installed packages, then source the terminal or simply close the terminal and load it up from scratch.

## Features

- Efficient and fast startup
- Custom key mappings for improved workflow
- Enhanced file browsing and searching
- Integrated Git support
- Syntax highlighting and autocompletion
- Support for multiple programming languages

## Key Shortcuts

This configuration uses the following key shortcuts for enhanced productivity:

### Leader Key
- **Leader key**: `Space` (` `) - Used as prefix for custom mappings

### File Navigation
- **File explorer**: `<leader>pv` (Space then pv) - Opens the file explorer
- **Telescope file search**: `<ctrl-p>` - Fuzzy finder for files
- **Telescope live grep**: `<ctrl-f>` - Search text content across files

### Window Navigation
- **Move left**: `<ctrl-h>` - Navigate to left split
- **Move down**: `<ctrl-j>` - Navigate to bottom split  
- **Move up**: `<ctrl-k>` - Navigate to top split
- **Move right**: `<ctrl-l>` - Navigate to right split

### Tmux Integration
- **Tmux pane navigation**: `<ctrl-b>` + `h/j/k/l` - Navigate between tmux panes in the same directions (left/down/up/right)

> **Note**: These key mappings are customizable in `lua/shadielfares/remap.lua`

## Plugins

This configuration uses the following plugins:

- [Packer.nvim](https://github.com/wbthomason/packer.nvim) - Plugin manager for Neovim
- [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder and more
- [Nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Better syntax highlighting
- [Lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Status line
- [Nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Quickstart configurations for the Neovim LSP client
- [Nvim-compe](https://github.com/hrsh7th/nvim-compe) - Auto-completion plugin

## Configuration

The configuration files are organized as follows:

- `init.vim` - Main configuration file
- `lua/` - Contains Lua scripts for additional configurations and plugin setups

## Contributing

Contributions are welcome! Please fork this repository and submit pull requests. For major changes, please open an issue first to discuss what you would like to change.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

You can edit and customize this template to better fit your specific needs and preferences.
