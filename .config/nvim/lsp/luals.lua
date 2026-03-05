local bin = vim.env.LUALS_BIN or 'lua-language-server'
local root_dir = vim.env.LUALS_ROOT_DIR or nil

return {
  cmd = { bin },
  filetypes = { 'lua' },
  root_markers = {
    ".luarc.json",
    ".luarc.jsonc",
    ".luacheckrc",
    ".stylua.toml",
    ".git",
  },
  root_dir = root_dir,
}

