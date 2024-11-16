-- Additional Telescope configuration and key mappings
local builtin = require('telescope.builtin')

-- Key mappings for Telescope
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Find files with Telescope' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Find Git files' })
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = 'Search string with Telescope' })

-- Additional Telescope setup (if needed)
