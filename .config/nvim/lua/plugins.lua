-- Plugins
require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'hrsh7th/nvim-compe'
    use 'windwp/nvim-autopairs'
    use 'nvim-lua/lsp-status.nvim'


    -- Telescope
    use {
      'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- Files
    use 'kyazdani42/nvim-tree.lua'

    -- Git
    use {'tpope/vim-fugitive'}

    -- UI
    use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
    use 'rafamadriz/neon'
    -- use {'hoob3rt/lualine.nvim',
    --   requires = {'kyazdani42/nvim-web-devicons'}
    -- }
    use { 'glepnir/galaxyline.nvim', branch = 'main',
    -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }



    -- Comment
    use 'terrortylor/nvim-comment'
end)

require('config.plugins')
