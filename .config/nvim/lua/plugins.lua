-- Plugins
require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'hrsh7th/nvim-compe'
    use 'nvim-lua/lsp-status.nvim'
    use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" }
    use 'kosayoda/nvim-lightbulb'
    use {"glepnir/lspsaga.nvim" }

    -- General Help
    use 'windwp/nvim-autopairs'
    use "folke/which-key.nvim"
    use 'tpope/vim-surround'

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- Files
    use 'kyazdani42/nvim-tree.lua'

    -- Git
    use {'tpope/vim-fugitive'}
    use { 'lewis6991/gitsigns.nvim', requires = {
        'nvim-lua/plenary.nvim'
      }
    }


    -- UI
    use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
    use 'rafamadriz/neon'
    use { 'glepnir/galaxyline.nvim', branch = 'main',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use 'folke/lsp-colors.nvim'


    -- Comment
    use 'terrortylor/nvim-comment'
end)

require('config.plugins')
