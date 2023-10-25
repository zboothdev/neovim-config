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

pcall(vim.cmd.colorscheme, "catppuccin-macchiato")

-- Function to output plugin list with links in markdown.
-- `nvim --headless -c ":lua PLUGIN_LIST()" -c 'q' 2> plugin_list.md`
PRINT_PLUGIN_LIST = function()
  local urls = {}
  for _, spec in pairs(require("lazy").plugins()) do
    urls[spec[1]] = spec.url
  end
  local names = vim.tbl_keys(urls)
  table.sort(names)

  print("# Plugin List\n")
  print(
    "This plugin list was generated from lazy.nvim's plugin list.",
    "It can be regenerated using the command ",
    "`nvim --headless -c \":lua PRINT_PLUGIN_LIST()\" -c 'q' 2> plugin_list.md`"
  )
  print("\n")
  for _, n in ipairs(names) do
    print("- [", n, "](", urls[n], ")")
  end
  print("\n")
end
