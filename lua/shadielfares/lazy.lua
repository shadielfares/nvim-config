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
	-- File Finder with Telescope
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-telescope/telescope.nvim", event = "BufEnter" },

	-- Status line
	{ "nvim-lualine/lualine.nvim", lazy = false, config = function()
		require("lualine").setup({
			options = { theme = "rose-pine" }
		})
	end },
	-- LSP and autocompletion
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "neovim/nvim-lspconfig" },
	-- TMUX Stuff
	{ "christoomey/vim-tmux-navigator", lazy = false },
	{ "github/copilot.vim" }
})

