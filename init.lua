print("hello")
require("whiteowl")

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
})
