return({
   {
      "lukas-reineke/indent-blankline.nvim",
      version = "^3.5.4",
      dependencies = {
         "nvim-treesitter/nvim-treesitter",
         -- ensures I can use its highlight groups for highlighting
         "HiPhish/rainbow-delimiters.nvim",
      },

      lazy = true,
      event = "BufRead",

      main = "ibl",
      config = function()
         require("ibl").setup({
            indent = {
               highlight = {
                  "NonText",
               },
            },
            -- Requires treesitter
            scope = {
               show_start = true,
               -- TODO: use custom hl groups
               highlight = {
                  "RainbowDelimiterViolet",
                  "RainbowDelimiterYellow",
                  "RainbowDelimiterBlue",
               },
            },
         })

         local hooks = require("ibl.hooks")

         hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
      end
   },
   {
      "HiPhish/rainbow-delimiters.nvim",
      version = "^0.4.0",
      require = "nvim-treesitter/nvim-treesitter",

      lazy = true,
      event = "BufRead",

      main = "rainbow-delimiters.setup",
      opts = {
         query = {
            [""] = "rainbow-delimiters",
            lua = "rainbow-blocks",
            query = "rainbow-blocks",
         },
         -- TODO: use custom hl groups
         highlight = {
            "RainbowDelimiterViolet",
            "RainbowDelimiterYellow",
            "RainbowDelimiterBlue",
         },
      },
   },
})
