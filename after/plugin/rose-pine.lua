local rose = require("rose-pine")
rose.setup({
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
      TSRainbowRed = { fg = "iris" },
      TSRainbowYellow = { fg = "love" },
      TSRainbowBlue = { fg = "gold" },
      TSRainbowOrange = { fg = "iris" },
      TSRainbowGreen = { fg = "love" },
      TSRainbowViolet = { fg = "gold" },
      TSRainbowCyan = { fg = "foam" },

      StatusLine = { fg = "subtle", bg = "surface" },
      StatusLineNC = { fg = "muted", bg = "surface", blend = 60 },
   },
})

vim.cmd("colorscheme rose-pine")
