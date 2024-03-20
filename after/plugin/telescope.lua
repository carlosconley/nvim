local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pr', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.live_grep();
end)
