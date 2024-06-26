-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'itchyny/lightline.vim'
  use 'folke/tokyonight.nvim'
  use 'morhetz/gruvbox'
  use { 'sonph/onehalf', rtp = 'vim' }
  use 'drewtempelmeyer/palenight.vim'
  use 'Mofiqul/vscode.nvim'
  use 'NLKNguyen/papercolor-theme'
  use 'chiendo97/intellij.vim'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'
  use 'onsails/lspkind.nvim'
  use 'bluz71/vim-nightfly-guicolors'
  use 'ayu-theme/ayu-vim'
  use 'brenoprata10/nvim-highlight-colors'
  use 'Ardakilic/vim-tomorrow-night-theme'
  use 'https://github.com/rhysd/vim-clang-format'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'jose-elias-alvarez/null-ls.nvim' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-cmdline' },
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },
      { "L3MON4D3/LuaSnip" },
      { 'saadparwaiz1/cmp_luasnip' }
    }
  }
end)
