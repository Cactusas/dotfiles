-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Enable true color support in the terminal
vim.opt.termguicolors = true

-- Set the number of spaces that a <Tab> counts for
vim.opt.tabstop = 2

-- Enable smart auto-indenting when starting a new line
vim.opt.smartindent = true

-- Number of spaces to use for each step of (auto)indent
vim.opt.shiftwidth = 2

-- Use spaces instead of actual tab characters
vim.opt.expandtab = true

-- Show relative line numbers for easier motion with commands like '5j' or '3k'
vim.opt.relativenumber = true

-- Show the absolute line number for the current line
vim.opt.number = true

-- Use the system clipboard for all yank, delete, change, and put operations
vim.opt.clipboard = "unnamedplus"

-- Highligh current line
vim.opt.cursorline = true

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  
  -- automatically check for plugin updates
  checker = { enabled = true },
})

