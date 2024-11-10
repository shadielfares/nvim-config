# Neovim Config 🧑‍💻

This repository contains my personal configuration for Neovim, aimed at enhancing productivity and customizing the Neovim experience.

## Table of Contents

- [Installation](#installation)
- [Features](#features)
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

## Features

- Efficient and fast startup
- Custom key mappings for improved workflow
- Enhanced file browsing and searching
- Integrated Git support
- Syntax highlighting and autocompletion
- Support for multiple programming languages

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
