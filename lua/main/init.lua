require("main.mappings")

vim.g.lightline = {['colorscheme']= 'nightfly'}
vim.cmd.colorscheme("intellij")

vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.signcolumn = 'yes'

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.g['clang_format#code_style'] ="google"
vim.g['clang_format#auto_format_on_insert_leave'] = 0
vim.g['clang_format#auto_format'] = 1
vim.g['clang_format#style_options'] = {["AllowShortIfStatementsOnASingleLine"] = "true"}
vim.g['clang_format#detect_style_file'] = 1

