require('telescope').setup({
  defaults = {
    file_ignore_patterns = { ".git" }
  }
})
local builtin = require('telescope.builtin')

-- Root of current project I'm working on
local curr_root = "/media/linux/support/swe_projects/my-mediasoup"

-- vim.api.nvim_set_hl(0, 'TelescopeSelection', {fg='#dddddd', bg='#333333', bold = true})
-- vim.api.nvim_set_hl(0, 'TelescopeMatching', {fg='#6dd191', bold = true})
-- vim.api.nvim_set_hl(0, 'TelescopeSelectionCaret', {bg = '#333333', fg='#dd0000', bold = true})

local cwd = "."

local function set_root()
  cwd = vim.fn.getcwd()
end

local nvim_config_file = vim.fn.findfile("init.lua", ".;")
if nvim_config_file ~= "" then
  cwd = "/home/linux/.config/nvim"
end
vim.keymap.set('n', '<C-p>', function()
  builtin.find_files({ cwd = cwd, hidden = true })
end, {})
vim.keymap.set('n', '<leader>g', function()
  builtin.live_grep({ cwd = cwd })
end, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', 'gl', builtin.diagnostics, {})
vim.keymap.set('n', '<leader><leader>', builtin.treesitter, {})

vim.api.nvim_create_user_command("Root", set_root, {})
