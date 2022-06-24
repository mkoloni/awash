local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "awash.lsp.lsp-installer"
require "awash.lsp.lsp-formatter"
require("awash.lsp.lsp-handler")
