-- Plugins
require('packer').startup(function()
    -- Packer
    use 'wbthomason/packer.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

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


    -- Comment
    use 'terrortylor/nvim-comment'


 
end)

require('config.plugins')
