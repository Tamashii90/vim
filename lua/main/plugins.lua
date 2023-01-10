-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'itchyny/lightline.vim'
    use 'morhetz/gruvbox'
    use 'chiendo97/intellij.vim'
    use 'bluz71/vim-nightfly-guicolors'
    use 'ayu-theme/ayu-vim'
    use 'Ardakilic/vim-tomorrow-night-theme'
    use 'https://github.com/rhysd/vim-clang-format'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            {'L3MON4D3/LuaSnip'},
        }
    }
end)
