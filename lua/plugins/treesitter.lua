return {
   {
      "nvim-treesitter/nvim-treesitter",
      version = "^0.9.2",

      lazy = false,

      opts = {
         ensure_installed = { "c", "cpp", "rust", "lua", "python", "html", "css", "c_sharp", "vimdoc" },

         -- Install parsers synchronously (only applied to `ensure_installed`)
         sync_install = false,
         auto_install = false,


         highlight = {
            enable = true,
         },

         indent = {
            enable = true,
         },
      },
      config = function()
         vim.cmd(":TSUpdate")
      end,
   },

}
