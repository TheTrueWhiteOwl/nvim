vim.api.nvim_create_autocmd(
   "TextYankPost",
   {
      desc = "Highlight when yanking text",
      group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
      callback = function()
         vim.highlight.on_yank({timeout = 500})
      end,
   }
)

-- HACK: Temporary fix for rainbow delimiters not working
vim.api.nvim_create_autocmd(
   "BufRead",
   {
      desc = "Ensure treesitter is active",
      -- NOTE: is this even the right augroup to use?
      group = vim.api.nvim_create_augroup("NvimTreesitter", { clear = false }),
      callback = function()
         if pcall(vim.treesitter.start) then
            vim.treesitter.start()
         end
      end,
   }
)
