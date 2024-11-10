-- ===================== Keybindings =====================
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)-- Shortcut for explorer

-- Telescope keybindings for file search and content search
vim.keymap.set('n', '<C-p>', ':Telescope find_files<CR>', { desc = 'Telescope find files', silent = true })
vim.keymap.set('n', '<C-f>', ':Telescope live_grep<CR>', { desc = 'Telescope live grep', silent = true })

-- Window navigation shortcuts
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move left', silent = true }) -- Ctrl + H to move left
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move down', silent = true }) -- Ctrl + J to move down
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move up', silent = true })   -- Ctrl + K to move up
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move right', silent = true })-- Ctrl + L to move right

