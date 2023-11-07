vim.g.mapleader = " "

local function map(mode, key, effects)
  vim.keymap.set(mode, key, effects, { noremap = true, silent = true })
end

map('n', "<F29>",
  ":w <CR>:split<CR>:resize 13<CR>:execute \'terminal g++ -Wextra -Wall % -o %< && ./%<\'<CR>:startinsert<CR>")
map('t', "<Esc>", "<C-\\><C-n>")
map('', "<C-_>", ":norm ^i// <CR>")
map('t', "<S-Up>", "<Esc><S-Up>")
map('i', "{<CR>", "{<CR>}<Esc><S-O>")
map('n', "<S-Down>", "<C-E>")
map('n', "<S-Up>", "<C-Y>")
map('n', "<S-j>", "<C-E>")
map('n', "<S-k>", "<C-Y>")

map('', "<C-Up>", "<C-U>")
map('', "<C-Down>", "<C-D>")
map('n', "<C-k>", "<C-U>")
map('n', "<C-j>", "<C-D>")

map('v', "<tab>", "<S->><S-V>")
map('v', "<S-tab>", "<S-<><S-V>")
map('n', "<leader>`", ":ToggleTerm<CR>")
map('n', "<C-s>", ":w<CR>")
map('i', "<C-s>", "<Esc>:w<CR>")
map('n', "n", "nzz")
map('n', "p", "pzz")

map('n', "<leader><Tab>", ":NvimTreeFindFileToggle<CR>")
-- vim.cmd[[imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>']]
-- vim.cmd[[inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>]]
-- vim.cmd[[snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>]]
-- vim.cmd[[snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>]]

-- vim.keymap.set({ "i", "s" }, "<c-k>", function ()
--   if require('luasnip').expand_or_jumpable() then
--     require('luasnip').expand_or_jump()
--   end
-- end, { silent = true})

-- vim.keymap.set({ "i", "s" }, "<c-k>", function ()
--   require('luasnip').jump(1)
-- end, { silent = true})

-- For changing choices in choiceNodes (not strictly necessary for a basic setup).
-- imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
-- smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
--

map('n', "<leader>n", ":tabnew<CR>")

map('n', "<leader><Up>", "<C-W><Up>")
map('n', "<leader><Down>", "<C-W><Down>")
map('n', "<leader>k", "<C-W><Up>")
map('n', "<leader>j", "<C-W><Down>")
map('n', "<leader><Left>", "<C-W><Left>")
map('n', "<leader><Right>", "<C-W><Right>")
map('n', "<leader>h", "<C-W><Left>")
map('n', "<leader>l", "<C-W><Right>")
--map('n', "<leader><Left>", ":tabprevious<CR>")
-- map('n', "<leader><Right>", ":tabnext<CR>")
map('n', "<leader>1", "1gt")
map('n', "<leader>2", "2gt")
map('n', "<leader>3", "3gt")
map('n', "<leader>4", "4gt")
map('n', "<leader>5", "5gt")
map('n', "<leader>6", "1gt")
map('n', "<leader>7", "2gt")
map('n', "<leader>8", "3gt")
map('n', "<leader>9", "4gt")
map('n', "<leader>0", "10gt")
