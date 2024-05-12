return {
   {
      'rose-pine/neovim',
      name = 'rose-pine',
      lazy = false,
      priority = 100,
      opts = {
         variant = "main", -- auto, main, moon, or dawn
         dark_variant = "main", -- main, moon, or dawn
         dim_inactive_windows = true,
         -- extend_background_behind_borders = true,

         enable = { },

         styles = {
            bold = true,
            italic = true,
            transparency = true,
         },

         groups = { },

         highlight_groups = {
            -- HiPhish/nvim-ts-rainbow2
            TSRainbowRed = { fg = "gold" },
            TSRainbowYellow = { fg = "iris" },
            TSRainbowBlue = { fg = "love" },
            TSRainbowOrange = { fg = "iris" },
            TSRainbowGreen = { fg = "gold" },
            TSRainbowViolet = { fg = "love" },
            TSRainbowCyan = { fg = "iris" },

            StatusLine = { fg = "subtle", bg = "surface" },
            StatusLineNC = { fg = "muted", bg = "surface", blend = 60 },
         },
      },
      config = function()
         vim.cmd("colorscheme rose-pine")
      end,
   }
}
