require'lspconfig'.bashls.setup{
  on_attach = function(client)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, {buffer=0})
    require "lsp-format".on_attach(client)
    require "lsp_signature".on_attach()
  end,
}

require'lspconfig'.clangd.setup{
  on_attach = function(client)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, {buffer=0})
    require "lsp-format".on_attach(client)
    require "lsp_signature".on_attach()
  end,
}

require'lspconfig'.gopls.setup{
  on_attach = function(client)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, {buffer=0})
    require "lsp-format".on_attach(client)
    require "lsp_signature".on_attach()
  end,
}

require'lspconfig'.tsserver.setup{
  on_attach = function(client)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, {buffer=0})
    require "lsp-format".on_attach(client)
    require "lsp_signature".on_attach()
  end,
}

require'lspconfig'.html.setup{
  on_attach = function(client)
    require "lsp-format".on_attach(client)
    require "lsp_signature".on_attach()
  end,
}

require'lspconfig'.vuels.setup{
  on_attach = function(client)
    require "lsp-format".on_attach(client)
    require "lsp_signature".on_attach()
  end,
}

require'lspconfig'.cssls.setup{
  on_attach = function(client)
    require "lsp-format".on_attach(client)
    require "lsp_signature".on_attach()
  end,
}

require'lspconfig'.tailwindcss.setup{
  on_attach = function(client)
    require "lsp-format".on_attach(client)
    require "lsp_signature".on_attach()
  end,
}

require'lspconfig'.emmet_ls.setup{
  on_attach = function(client)
    require "lsp-format".on_attach(client)
    require "lsp_signature".on_attach()
  end,
}

