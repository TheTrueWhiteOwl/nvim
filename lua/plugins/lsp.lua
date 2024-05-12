return {
   'neovim/nvim-lspconfig',


   {
      'williamboman/mason.nvim',
      opts = {},
   },
   {
      'williamboman/mason-lspconfig.nvim',
      opts = {
         ensure_installed = {
            'pyright',
            'rust_analyzer',
            'lua_ls',
            'html',
            'cssls',
         },
      },
   },

   handlers = {
      default_setup,
      lua_ls = function()
         require('lspconfig').lua_ls.setup({
            capabilities = lsp_capabilities,
            settings = {
               Lua = {
                  diagnostics = {
                     globals = { 'vim' }
                  }
               }
            }
         })
      end,
   },

   {
      'L3MON4D3/LuaSnip',
      version = '^2.3.0',
   },

   {
      'hrsh7th/nvim-cmp',
      dependencies = {
         'L3MON4D3/LuaSnip',
      },
      opts = {
         sources = {
            {
               name = 'nvim_lsp'
            },
         },
         snippet = {
            expand = function(args)
               require('luasnip').lsp_expand(args.body)
            end,
         },
      },
   },
   'hrsh7th/cmp-nvim-lsp',
}
