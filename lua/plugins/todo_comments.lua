return {
   "folke/todo-comments.nvim",
   version = "^1.2.0",
   dependencies = {
      -- required:
      "nvim-lua/plenary.nvim",

      -- for comments only matching:
      "nvim-treesitter/nvim-treesitter",
      -- for telescope searching:
      "nvim-telescope/telescope.nvim",
      -- TODO: add trouble
      -- for trouble searching:
      -- "folke/trouble.nvim"
   },

   -- TODO: lazy loading

   opts = {},
}
