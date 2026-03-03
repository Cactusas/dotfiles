local bin = vim.env.VTSLS_BIN or 'vtsls'
local plug_loc = vim.env.VTSLS_PLUG or '/usr/local/lib/node_modules/@vue/typescript-plugin/'

return {
  cmd = {bin, '--stdio' },
  settings = {
    vtsls = {
      tsserver = {
        globalPlugins = {
          {
          name = '@vue/typescript-plugin',
          location = plug_loc,
          languages = { 'vue' },
          }
        },
      },
    },
  },
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
}

