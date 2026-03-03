return {
  'saghen/blink.cmp',
  version = '1.*',
  opts = {
    keymap = {
      preset = 'default',
        ['<CR>'] = { 'select_and_accept', 'fallback' },
        ['<Esc>'] = { 'hide', 'fallback' },
    },
  }
}

