" ===================== Plugin Management =====================
" Use Lazy.nvim for better performance and lazy-loading of plugins
lua << EOF
  -- Automatically install Lazy.nvim if not present
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable",
      lazypath,
    })
  end
  vim.opt.rtp:prepend(lazypath)

  -- Configure Lazy.nvim plugins
  require("lazy").setup({
    -- Theme plugin
    { "ellisonleao/gruvbox.nvim", lazy = false, priority = 1000 },

    -- File Finder with Telescope
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim", event = "BufEnter" },

    -- Status line
    { "nvim-lualine/lualine.nvim", lazy = false, config = function()
        require("lualine").setup({
          options = { theme = "gruvbox" }
        })
      end },

    -- LSP (Language Server Protocol) and Autocompletion
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/nvim-cmp" },  -- Autocompletion plugin
    { "hrsh7th/cmp-nvim-lsp" }  -- LSP completion source
  })
EOF

" ===================== General Settings =====================
set number               " Show line numbers
set relativenumber       " Show relative line numbers
set tabstop=4            " Set tab width to 4 spaces
set shiftwidth=4         " Set indentation width to 4 spaces
set expandtab            " Use spaces instead of tabs
set wrap                 " Wrap long lines
set cursorline           " Highlight the current line

" ===================== Theme Settings =====================
syntax enable            " Enable syntax highlighting
set background=dark      " Dark background
colorscheme gruvbox      " Set Gruvbox theme

" ===================== Keybindings =====================
" Telescope keybindings for file search and content search
nnoremap <C-p> :Telescope find_files<CR>
nnoremap <C-f> :Telescope live_grep<CR>   " Ctrl + F to search within files

" Window navigation shortcuts
nnoremap <C-h> <C-w>h                     " Ctrl + H to move left
nnoremap <C-j> <C-w>j                     " Ctrl + J to move down
nnoremap <C-k> <C-w>k                     " Ctrl + K to move up
nnoremap <C-l> <C-w>l                     " Ctrl + L to move right

