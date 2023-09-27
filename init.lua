-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- bootstrap lazy.nvim
require("config.lazy")

require("config.keymaps")
require("config.options")
require("config.autocmds")

pcall(vim.cmd.colorscheme, "onedark")
