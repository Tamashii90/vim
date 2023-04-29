require("main.mappings")

vim.g.lightline = { ['colorscheme'] = 'nightfly' }
-- vim.g.lightline = {['colorscheme']= 'gruvbox'}
-- vim.cmd.colorscheme("gruvbox")
-- vim.cmd.colorscheme("nightfly")
vim.cmd.colorscheme("vscode")
vim.opt.background = 'light'

vim.cmd [[autocmd BufEnter * execute 'lcd ' . expand('%:p:h')]]

vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.signcolumn = 'yes'
vim.opt.clipboard = 'unnamedplus'

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.cmd [[autocmd FileType javascript ClangFormatAutoDisable]]
vim.g['clang_format#code_style'] = "google"
vim.g['clang_format#auto_format_on_insert_leave'] = 0
vim.g['clang_format#auto_format'] = 1
vim.g['clang_format#style_options'] = { ["AllowShortIfStatementsOnASingleLine"] = "true" }
vim.g['clang_format#detect_style_file'] = 1
