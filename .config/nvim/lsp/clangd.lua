local bin = vim.env.CLANGD_BIN or 'clangd'
local root_dir = vim.env.CLANGD_ROOT_DIR or nil

return {
  cmd = { bin },
  filetypes = { 'c', 'cpp' },
  root_dir = root_dir
}

