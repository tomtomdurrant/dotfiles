local execute = vim.api.nvim_command
local fn = vim.fn

-- ensure packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

require('packer').startup(function(use)
    -- plugin
    use 'wbthomason/packer.nvim'

    -- treesitter and LSP
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'
    use "hrsh7th/nvim-compe"
    use "onsails/lspkind-nvim"

    -- theme
    use 'folke/tokyonight.nvim'
    use 'kyazdani42/nvim-web-devicons'
--    use "glepnir/galaxyline.nvim"
    use {
      'hoob3rt/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }



    -- finding
    use { 'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    -- bufferline
    use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}

    -- git
    use {'tpope/vim-fugitive'}


end)

require('lsp-settings')
require('lspkind').init()
