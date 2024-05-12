require('lazy').setup({
   -- color scheme
   {
      'rose-pine/neovim',
      name = 'rose-pine',
      priority = 100,
   },
   'brenoprata10/nvim-highlight-colors',

   -- treesitter
   'nvim-treesitter/nvim-treesitter',
   'HiPhish/nvim-ts-rainbow2',

   -- undotree
   'mbbill/undotree',

   -- git
   'tpope/vim-fugitive',

   -- lsp
   'neovim/nvim-lspconfig',
   'williamboman/mason.nvim',
   'williamboman/mason-lspconfig.nvim',
   {
      'L3MON4D3/LuaSnip',
      version = 'v2.*',
   },
   'hrsh7th/nvim-cmp',
   'hrsh7th/cmp-nvim-lsp',
   require 'plugins.telescope',
   require 'plugins.indent_line',
})
