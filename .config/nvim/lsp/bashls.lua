local bin = vim.env.BASHLS_BIN or 'bash-language-server'
local root_dir = vim.env.BASHLS_ROOT_DIR or nil

return {
  cmd = {bin, 'start' },
  filetypes = { 'bash', 'sh' },
  root_dir = root_dir,
}

