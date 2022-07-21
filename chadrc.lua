-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "gruvchad",
}

M.plugins = {
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },

   -- first
   -- insall - PackerSync - LspInstallInfo:
   -- install = {
   --    ["jose-elias-alvarez/null-ls.nvim"] = {
   --       after = "nvim-lspconfig",
   --       config = function()
   --          require "custom.plugins.null-ls"
   --       end,
   --    }
   -- }

   -- then
   user = {
      ["jose-elias-alvarez/null-ls.nvim"] = {
         after = "nvim-lspconfig",
         config = function()
            require "custom.plugins.null-ls"
         end,
      }
   }
}

return M
