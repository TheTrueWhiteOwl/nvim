configs = require('nvim-treesitter.configs')
configs.setup({
	-- A list of parser names, or "all"
	ensure_installed = { 'c', 'cpp', 'rust', 'lua', 'python', 'html', 'css', 'c_sharp' },

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = false,

	---- List of parsers to ignore installing (or "all")
	-- ignore_install = { },

	---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
	-- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

	highlight = {
		enable = true,
		-- disable = { }, -- NOTE: these are the names of the parsers and not the filetype.

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},

	indent = {
		enable = true,
		-- disable = { 'html' },
	},
	
	---- modules ( deprecated by nvim-treesitter )
	rainbow = {
		enable = true,
		-- disable = { },
		-- Use parentheses by default and entire tags for HTML
		query = {
			'rainbow-parens',
			html = 'rainbow-tags',
		},
	},
})

vim.cmd(':TSUpdate')
