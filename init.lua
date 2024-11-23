-- Set localleader before loading any plugins
-- Set leader key
vim.g.mapleader = " "  -- Set space as leader key
vim.g.maplocalleader = " "

-- Entry point of Neovim configuration
require("config.options") -- Basic Vim options  --keep this above for leader
require("config.lazy") -- Bootstrap lazy.nvim
require("config.keymaps") -- Basic keymaps
require("config.autocmds") -- Autocommands
