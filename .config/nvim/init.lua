require("config.lazy")

vim.diagnostic.config({ virtual_text = true })
vim.lsp.inlay_hint.enable(true)
vim.lsp.enable({ 'clangd', 'bashls', 'luals', 'vtsls', 'vuels' })

vim.lsp.config('*', {
  on_attach = function(client, bufnr)
    local cap = client.server_capabilities
    if cap.documentHighlightProvider then
      vim.o.updatetime = 100
      vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
          buffer = bufnr,
          callback = vim.lsp.buf.document_highlight,
        })
      vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
        buffer = bufnr,
        callback = vim.lsp.buf.clear_references,
      })
    end

    if cap.declarationProvider then
      vim.keymap.set("n", "gd", vim.lsp.buf.declaration, { buffer = bufnr })
    end

    if cap.definitionProvider then
      vim.keymap.set("n", "gi", vim.lsp.buf.definition, { buffer = bufnr })
    end

    if cap.referencesProvider then
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr })
    end
  end
})

vim.keymap.set("n", "c", "\"_c")
vim.keymap.set("n", "d", "\"_d")

-- Go to next quickfix item
vim.keymap.set("n", "<C-j>", ":cnext<CR>", { noremap = true, silent = true })

-- Go to previous quickfix item
vim.keymap.set("n", "<C-k>", ":cprev<CR>", { noremap = true, silent = true })
