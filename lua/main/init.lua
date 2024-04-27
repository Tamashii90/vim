require("main.mappings")

local dark_mode = true
local curr_color = dark_mode and "tokyonight-moon" or "tokyonight-day"
-- "onehalflight"
-- "gruvbox"
-- "nightfly"
-- "intellij"
-- "PaperColor"
-- "tokyonight-moon"
-- "vscode"

vim.cmd.colorscheme(curr_color)
if (not dark_mode) then
  vim.opt.background = "light"
end

-- Set transparent background
if (dark_mode) then
  vim.cmd('highlight Normal ctermbg=none guibg=none')
  vim.cmd('highlight NormalNC ctermbg=none guibg=none')
  vim.cmd('highlight NonText ctermbg=none guibg=none')
  vim.cmd('highlight SignColumn guibg=none')
  vim.cmd('highlight LineNr ctermfg=darkgray guifg=darkgray')
end

vim.g.lightline = {
  --  component = {
  --    filename = '%n:%t',
  --  },
  colorscheme = "tokyonight"
}

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.signcolumn = 'yes'

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim.opt.clipboard = 'unnamedplus'

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smarttab = true

-- If terminal, start insert mode else lcd to file's directory
vim.api.nvim_create_autocmd({ "BufEnter", "TermEnter" }, {
  callback = function(arg)
    if not string.match(arg.file, "term:*") then
      vim.cmd [[execute 'lcd ' . expand('%:p:h')]]
    else
      vim.cmd("startinsert")
    end
  end
})

require('nvim-highlight-colors').setup {
  render = 'foreground',
  enable_tailwind = true
}


vim.cmd("autocmd VimEnter * Root")
vim.cmd [[autocmd FileType javascript ClangFormatAutoDisable]]
vim.cmd [[autocmd TermOpen * setlocal nonumber norelativenumber]]
-- vim.g['clang_format#code_style'] = "google"
-- vim.g['clang_format#auto_format_on_insert_leave'] = 0
-- vim.g['clang_format#auto_format'] = 1
-- vim.g['clang_format#style_options'] = { ["AllowShortIfStatementsOnASingleLine"] = "true" }
-- vim.g['clang_format#detect_style_file'] = 1
