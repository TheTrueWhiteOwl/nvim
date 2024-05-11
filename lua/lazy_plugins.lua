function prequire(...)
    local status, lib = pcall(require, ...)
    if (status) then return lib end
    --Library failed to load, so return `nil`
    return nil
end

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
      version = 'v2.*',
   },
   'hrsh7th/nvim-cmp',
   'hrsh7th/cmp-nvim-lsp',
   prequire 'whiteowl.plugins.indent_line',
   prequire 'whiteowl.plugins.lint',
})
