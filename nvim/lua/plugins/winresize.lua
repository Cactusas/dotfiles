return {
  "pogyomo/winresize.nvim",
  keys = {
    {"<C-Left>", function() require("winresize").resize(0, 2, "left") end, mode = "n" },
    {"<C-Right>", function() require("winresize").resize(0, 1, "right") end, mode = "n" },
    {"<C-Up>", function() require("winresize").resize(0, 1, "up") end, mode = "n" },
    {"<C-Down>", function() require("winresize").resize(0, 2, "down") end, mode = "n" }
  }
}

