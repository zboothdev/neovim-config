return {
  {
    "christoomey/vim-tmux-navigator",
    keys = {
      -- stylua: ignore
      { "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", desc = "Tmux Nav Left", remap = false },
      { "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", desc = "Tmux Nav Down", remap = false },
      { "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", desc = "Tmux Nav Up", remap = false },
      { "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", desc = "Tmux Nav Right", remap = false },
    },
  },
  { "jlanzarotta/bufexplorer" },

  -- Git related plugins
  { "tpope/vim-fugitive" },

  -- "gc" to comment visual regions/lines
  { "numToStr/Comment.nvim", opts = {}, lazy = false },
}
