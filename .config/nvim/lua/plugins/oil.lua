return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  keys = {
    {
      "<leader><leader>",
      function()
        require("oil").open()
      end,
      desc = "Open Oil file explorer",
    },
  }
}

