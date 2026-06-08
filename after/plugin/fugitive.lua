-- Fugitive keymaps for Git operations and merge conflict resolution
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git Status" })

-- Git status window navigation and operations
vim.keymap.set("n", "<leader>ga", ":Git add %<CR>", { desc = "Git add current file" })
vim.keymap.set("n", "<leader>gC", ":Git commit<CR>", { desc = "Git commit" })
vim.keymap.set("n", "<leader>gp", ":Git push<CR>", { desc = "Git push" })
vim.keymap.set("n", "<leader>gl", ":Git pull<CR>", { desc = "Git pull" })

-- Merge conflict resolution with Fugitive
vim.keymap.set("n", "<leader>gd", ":Gdiffsplit<CR>", { desc = "Git diff split" })
vim.keymap.set("n", "<leader>gD", ":Gvdiffsplit<CR>", { desc = "Git vertical diff split" })
vim.keymap.set("n", "<leader>gv", ":Git! --no-pager log --oneline --graph --all<CR>", { desc = "Git log graph" })

-- In a conflict diff view (:Gdiffsplit) use native Fugitive commands directly:
--   co/ct/cb/ca - choose ours/theirs/base/all
--   dp/do       - diff put / diff obtain

-- Refresh diff view
vim.keymap.set("n", "<leader>gR", ":Gdiffsplit!<CR>", { desc = "Refresh diff view" })

-- Advanced Git operations
vim.keymap.set("n", "<leader>gr", ":Git rebase<CR>", { desc = "Git rebase" })
vim.keymap.set("n", "<leader>gm", ":Git merge<CR>", { desc = "Git merge" })
vim.keymap.set("n", "<leader>gb", ":Git branch<CR>", { desc = "Git branch" })
vim.keymap.set("n", "<leader>gt", ":Git tag<CR>", { desc = "Git tag" })
