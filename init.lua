require("whiteowl")

vim.opt.termguicolors = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require 'lazy'.setup({
	-- color scheme
	{ 
		'rose-pine/neovim',
		name = 'rose-pine',
		priority = 100,
	},
	{
		'norcalli/nvim-colorizer.lua',
		init = function()
			vim.cmd([[lua require('colorizer').setup()]])
		end,
	},

	-- treesitter
	'nvim-treesitter/nvim-treesitter',
	'HiPhish/nvim-ts-rainbow2',

	-- telescope
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                          , branch = '0.1.x',
		dependencies = {
			{'nvim-lua/plenary.nvim'},
		}
	},

	-- git
	'tpope/vim-fugitive',

	-- lsp
	'neovim/nvim-lspconfig',
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	{
		'L3MON4D3/LuaSnip',
		-- follow latest release.
		version = 'v2.*', -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = 'make install_jsregexp'
	},
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
})
