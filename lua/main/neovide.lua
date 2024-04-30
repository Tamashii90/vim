vim.o.guifont = "SauceCodePro Nerd Font:h10"
vim.opt.linespace = 6

vim.g.neovide_padding_top = 5
vim.g.neovide_padding_bottom = 5
vim.g.neovide_padding_right = 5
vim.g.neovide_padding_left = 5

if (vim.g.dark_mode) then
  vim.g.neovide_transparency = 0.96
  vim.g.neovide_theme = 'dark'
end
