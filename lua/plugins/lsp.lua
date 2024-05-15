return {
   {
      "williamboman/mason.nvim",
      version = "^1.10.0",

      lazy = true,

      opts = {
         ui = {
            border = "rounded",
            width = 0.8,
            height = 0.9,

            icons = {
               package_installed = "●",
               package_pending = "󰦗",
               package_uninstalled = "○"
            }
         },
      },
   },
   {
      "williamboman/mason-lspconfig.nvim",
      version = "^1.29.0",
      dependencies = {
         "neovim/nvim-lspconfig",
         "williamboman/mason.nvim",
         --"hrsh7th/cmp-nvim-lsp", Not using anymore until I actually notice a difference
      },

      lazy = false,

      opts = {
         ensure_installed = {
            "pyright",
            "rust_analyzer",
            "lua_ls",
            "html",
            "cssls",
         },
         handlers = {
            function(server)
               require("lspconfig")[server].setup({
                  --capabilities = require("cmp_nvim_lsp").default_capabilities(),
               })
            end,

            lua_ls = function()
               require("lspconfig").lua_ls.setup({
                  settings = {
                     Lua = {
                        diagnostics = {
                           globals = { "vim" }
                        }
                     }
                  }
               })
            end,
         },
      },
   },

   {
      "L3MON4D3/LuaSnip",
      version = "^2.3.0",

      lazy = true,
   },

   {
      "hrsh7th/nvim-cmp",
      version = "^0.1.0",
      dependencies = {
         "L3MON4D3/LuaSnip",
      },

      lazy = true,
      event = "LspAttach",

      opts = {
         sources = {
            {
               name = "nvim_lsp"
            },
         },
         snippet = {
            expand = function(args)
               require("luasnip").lsp_expand(args.body)
            end,
         },
      },
   },
}
