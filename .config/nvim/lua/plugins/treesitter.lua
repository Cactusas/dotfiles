return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {
    ensure_installed = {
      'javascript',
      'bash',
      'make',
      'cmake',
      'vue',
      'html',
      'css',
      'cpp'
    }
  },
  config = function(_, opts)
    local TS = require("nvim-treesitter")
    local installed = TS.get_installed()
    local need_install = {}

    -- Collect required parsers
    for _, p in ipairs(opts.ensure_installed) do
      if not vim.tbl_contains(installed, p) then
        table.insert(need_install, p)
      end
    end

    -- Install missing parsers
    if #need_install > 1 then
        vim.api.nvim_echo({{"Installing missing treesitter parsers...\n", "OkMsg" }}, true, {})
        TS.install(need_install):wait(300000)
    end

    -- Add 'sh' to pattern in order to work with all sh scripts
    table.insert(opts.ensure_installed, 'sh')
    table.insert(opts.ensure_installed, 'c')
    vim.api.nvim_create_autocmd('FileType', {
      pattern = opts.ensure_installed,
      callback = function()
        vim.treesitter.start()
      end
    })
  end
}

