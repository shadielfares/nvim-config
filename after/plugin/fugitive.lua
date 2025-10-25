-- Fugitive keymaps for Git operations and merge conflict resolution
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git Status" })

-- Git status window navigation and operations
vim.keymap.set("n", "<leader>ga", ":Git add %<CR>", { desc = "Git add current file" })
vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", { desc = "Git commit" })
vim.keymap.set("n", "<leader>gp", ":Git push<CR>", { desc = "Git push" })
vim.keymap.set("n", "<leader>gl", ":Git pull<CR>", { desc = "Git pull" })

-- Merge conflict resolution with Fugitive
vim.keymap.set("n", "<leader>gd", ":Gdiffsplit<CR>", { desc = "Git diff split" })
vim.keymap.set("n", "<leader>gD", ":Gvdiffsplit<CR>", { desc = "Git vertical diff split" })
vim.keymap.set("n", "<leader>gv", ":Git! --no-pager log --oneline --graph --all<CR>", { desc = "Git log graph" })

-- Conflict resolution (use in diff view opened with :Gdiffsplit)
-- In the diff view, use these commands:
-- 'co' - choose ours (your version)
-- 'ct' - choose theirs (incoming version)  
-- 'cb' - choose base (common ancestor)
-- 'ca' - choose all (keep both changes)
vim.keymap.set("n", "<leader>gco", "co", { desc = "Choose ours in diff view", buffer = true })
vim.keymap.set("n", "<leader>gct", "ct", { desc = "Choose theirs in diff view", buffer = true })
vim.keymap.set("n", "<leader>gcb", "cb", { desc = "Choose base in diff view", buffer = true })
vim.keymap.set("n", "<leader>gca", "ca", { desc = "Choose all in diff view", buffer = true })

-- Refresh diff view
vim.keymap.set("n", "<leader>gR", ":Gdiffsplit!<CR>", { desc = "Refresh diff view" })

-- Advanced Git operations
vim.keymap.set("n", "<leader>gr", ":Git rebase<CR>", { desc = "Git rebase" })
vim.keymap.set("n", "<leader>gm", ":Git merge<CR>", { desc = "Git merge" })
vim.keymap.set("n", "<leader>gb", ":Git branch<CR>", { desc = "Git branch" })
vim.keymap.set("n", "<leader>gt", ":Git tag<CR>", { desc = "Git tag" })
