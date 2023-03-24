-- protected function call to import the lspconfig plugin
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require "usman.lsp.mason"
require("usman.lsp.handlers").setup()
require "usman.lsp.null-ls"
