-- https://lsp-zero.netlify.app/v3.x/blog/you-might-not-need-lsp-zero.html
-- ^ this is the setup I used ^ Open link above to learn how to edit further ^


local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

local default_setup = function(server)
   require('lspconfig')[server].setup({
      capabilities = lsp_capabilities,
   })
end
