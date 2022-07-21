local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- lspservers with default config
   local servers = {
      "html",
      "cssls",
      "clangd",
      "tsserver",
      "cmake",
      "dokcerls",
      "bashls",
      "eslint",
      "gopls",
      "graphql",
      "pyright",
      "intelephense",
      "tailwindcss",
      "texlab",
      "vimls",
      "yamlls"
   }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
      }
   end
end

return M
