local builtin = require('telescope.builtin')

-- vim.api.nvim_set_hl(0, 'TelescopeSelection', {fg='#dddddd', bg='#333333', bold = true})
-- vim.api.nvim_set_hl(0, 'TelescopeMatching', {fg='#6dd191', bold = true})
-- vim.api.nvim_set_hl(0, 'TelescopeSelectionCaret', {bg = '#333333', fg='#dd0000', bold = true})

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', 'gl', builtin.diagnostics, {})
vim.keymap.set('n', '<leader><leader>', builtin.treesitter, {})
