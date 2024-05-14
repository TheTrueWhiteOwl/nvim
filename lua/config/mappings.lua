vim.opt.timeout = true
vim.opt.timeoutlen = 1500

vim.opt.ttimeout = false

-- Fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files)

-- Diagnostics
vim.keymap.set("n", "gl", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)

-- LSPs
vim.api.nvim_create_autocmd("LspAttach", {
   desc = "LSP actions",
   callback = function(event)
      local opts = {buffer = event.buf}

      -- these will be buffer-local keybindings
      -- because they only work if you have an active language server

      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
      vim.keymap.set("n", "go", vim.lsp.buf.type_definition, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, opts)
      vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, opts)
      vim.keymap.set({"n", "x"}, "<F3>", function() vim.lsp.buf.format({async = true}) end, opts)
      vim.keymap.set("n", "<F4>", vim.lsp.buf.code_action, opts)
   end
})

-- completion
local cmp = require("cmp")
cmp.mapping.preset.insert({
   -- Enter key confirms completion item
   ["<CR>"] = cmp.mapping.confirm({select = false}),

   -- Ctrl + space triggers completion menu
   ["<C-Space>"] = cmp.mapping.complete(),
})

-- UndoTree
vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle)
