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

-- Setup Lazy.nvim with basic plugin declarations
require("lazy").setup({
	
	-- Theme plugin
	{ "rose-pine/neovim", name = "rose-pine", lazy = false, priority = 1000 },

	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{ "nvim-treesitter/nvim-treesitter-context" },
    { "tpope/vim-fugitive" },
	-- File Finder with Telescope
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-telescope/telescope.nvim", event = "BufEnter" },
	{ "nvim-tree/nvim-web-devicons", opts = {} },

	-- Status line
	{ "nvim-lualine/lualine.nvim", lazy = false, config = function()
		require("lualine").setup({
			options = { theme = "rose-pine" }
		})
	end },
	-- LSP and autocompletion
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },

    -- Null-ls for formatting and diagnostics
    {"nvimtools/none-ls.nvim", dependencies = { "nvim-lua/plenary.nvim" }, config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.prettier.with({
                    filetypes = { "javascript", "typescript", "html", "css", "json", "jsonc", "markdown", "yaml", "yml" },
                    prefer_local = "node_modules/.bin",
                    -- Only use prettier when a config file exists in project root
                    -- Prettier will automatically find and use .prettierrc when run from project root
                    condition = function(utils)
                        -- Check for .prettierrc files (with or without extension)
                        -- Pattern .prettierrc* matches .prettierrc, .prettierrc.json, .prettierrc.js, etc.
                        return utils.root_has_file_matches(".prettierrc*") or 
                               utils.root_has_file_matches("prettier.config.*")
                    end,
                }),
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.black.with({
                    filetypes = { "python", "py", "python3" },
                }),
            },
        })
    end},
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-buffer" },
	{ "neovim/nvim-lspconfig" },
	-- TMUX navigation integration (load immediately so mappings work in both tmux and nvim)
	{ "christoomey/vim-tmux-navigator", lazy = false },
	-- { "github/copilot.vim" },
    { "mbbill/undotree" }, 
    { 'ThePrimeagen/harpoon' },
    {
  'dmtrKovalenko/fff.nvim',
  build = function()
    -- this will download prebuild binary or try to use existing rustup toolchain to build from source
    -- (if you are using lazy you can use gb for rebuilding a plugin if needed)
    require("fff.download").download_or_build_binary()
  end,
  -- if you are using nixos
  -- build = "nix run .#release",
  opts = { -- (optional)
    debug = {
      enabled = true,     -- we expect your collaboration at least during the beta
      show_scores = true, -- to help us optimize the scoring system, feel free to share your scores!
    },
  },
  -- No need to lazy-load with lazy.nvim.
  -- This plugin initializes itself lazily.
  lazy = false,
  keys = {
    {
      "ff", -- try it if you didn't it is a banger keybinding for a picker
      function() require('fff').find_files() end,
      desc = 'FFFind files',
    }
  }
}
})

