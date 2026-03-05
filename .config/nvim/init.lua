require("config.lazy")

vim.diagnostic.config({ virtual_text = true })
vim.lsp.inlay_hint.enable(true)
vim.lsp.enable({ 'clangd', 'bashls', 'luals', 'vtsls', 'vuels' })

vim.lsp.config('*', {
  on_attach = function(client, bufnr)
    vim.keymap.set("n", "gd", vim.lsp.buf.declaration, { buffer = bufnr })
    vim.keymap.set("n", "gi", vim.lsp.buf.definition, { buffer = bufnr })
    vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr })
    vim.keymap.set("n", "gh", vim.lsp.buf.signature_help, { buffer = bufnr })
    vim.keymap.set("n", "gI", vim.lsp.buf.incoming_calls, { buffer = bufnr })
    vim.keymap.set("n", "gO", vim.lsp.buf.outgoing_calls, { buffer = bufnr })
    vim.keymap.set("n", "gw", vim.lsp.buf.workspace_diagnostics, { buffer = bufnr })
  end
})

vim.keymap.set("n", "c", "\"_c")
vim.keymap.set("n", "d", "\"_d")
