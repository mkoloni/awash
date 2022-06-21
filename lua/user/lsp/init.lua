local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.lsp-installer"
require "user.lsp.lsp-formatter"
require("user.lsp.lsp-handler")
