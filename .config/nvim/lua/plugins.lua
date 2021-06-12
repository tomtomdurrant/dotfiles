local execute = vim.api.nvim_command
local fn = vim.fn

-- ensure packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'
    use 'folke/tokyonight.nvim'

end)

require('lsp-settings')
