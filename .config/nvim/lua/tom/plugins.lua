local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerCompile
	augroup end
]]
-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})
vim.notify "ASdasda"
vim.notify "hellp"

return packer.startup(function(use)
	-- Base plugins
	use "wbthomason/packer.nvim" -- let packer manage itself
	use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
	use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
	use "lewis6991/impatient.nvim" -- improve startup time

	--
	use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
	use "numToStr/Comment.nvim" -- Easily comment stuff
	use "lewis6991/gitsigns.nvim"

	use "terrortylor/nvim-comment"
	-- use "JoosepAlviste/nvim-ts-context-commentstring"

	-- File Tree
	use "kyazdani42/nvim-tree.lua"
	use "kyazdani42/nvim-web-devicons" -- optional, for file icon
	use "lukas-reineke/indent-blankline.nvim"

	-- Utils
	use "folke/which-key.nvim"
	use "RishabhRD/popfix"
	use "akinsho/bufferline.nvim"
	use "famiu/bufdelete.nvim"
	use "nvim-lualine/lualine.nvim"
	use "editorconfig/editorconfig-vim"
	use "goolord/alpha-nvim"

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	-- Telescope
	use "nvim-telescope/telescope.nvim"
	use "nvim-telescope/telescope-fzy-native.nvim"

	-- LSP
	use "neovim/nvim-lspconfig" -- enable LSP
	use "williamboman/nvim-lsp-installer" -- simple to use language server installer
	use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
	use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
	use "jose-elias-alvarez/nvim-lsp-ts-utils" -- more lsp for typescript
	use "b0o/schemastore.nvim" -- list of json schemas
	use "RishabhRD/nvim-lsputils"
	use "ray-x/lsp_signature.nvim"
	use "folke/trouble.nvim"
	use "github/copilot.vim"
	use({ "weilbith/nvim-code-action-menu", cmd = "CodeActionMenu" })
	use "filipdutescu/renamer.nvim"

	-- language specific
	use "ckipp01/stylua-nvim"

	-- cmp plugins
	use "hrsh7th/nvim-cmp" -- The completion plugin
	use "hrsh7th/cmp-buffer" -- buffer completions
	use "hrsh7th/cmp-path" -- path completions
	use "hrsh7th/cmp-cmdline" -- cmdline completions
	use "saadparwaiz1/cmp_luasnip" -- snippet completions
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-nvim-lua"

	-- snippets
	use "L3MON4D3/LuaSnip" --snippet engine
	use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

	-- terminal
	use "akinsho/toggleterm.nvim"
	use "tknightz/telescope-termfinder.nvim"

	-- colours
	use "folke/tokyonight.nvim"
	use "bluz71/vim-moonfly-colors"
	use "christianchiarulli/nvcode-color-schemes.vim"
	use "mangeshrex/everblush.vim"
	use "savq/melange"

	-- testing
	use({ "rcarriga/vim-ultest", requires = { "vim-test/vim-test" }, run = ":UpdateRemotePlugins" })

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
