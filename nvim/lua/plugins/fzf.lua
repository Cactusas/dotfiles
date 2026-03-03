return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
   winopts = {
      split = 'tabnew',
      preview = {
        vertical = 'up:80%',
        border = 'none',
      },
    }
  },
  keys = {
    { "<leader>ff", function() require("fzf-lua").files() end, desc = "Find files" },
    { "<leader>fg", function() require("fzf-lua").live_grep() end, desc = "Live grep" },
    { "<leader>fw", function() require("fzf-lua").grep_cword() end, desc = "Grep word under cursor" },
    { "<leader>fr", function() require("fzf-lua").resume() end, desc = "Resume FzfLua" },
  }
}

