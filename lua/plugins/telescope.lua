local Plugin = { "nvim-telescope/telescope.nvim" }

Plugin.branch = "0.1.x"

Plugin.dependencies = {
  { "nvim-lua/plenary.nvim" },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
}

Plugin.cmd = { "Telescope" }

function Plugin.init()
  -- See :help telescope.builtin
  vim.keymap.set("n", "<leader>?", "<cmd>Telescope oldfiles<cr>")
  vim.keymap.set("n", "<leader><space>", "<cmd>Telescope buffers<cr>")
  vim.keymap.set("n", "<leader>ff", function()
    require("telescope.builtin").find_files({ cwd = false, default_text = vim.fn.expand("<cfile>") })
  end, { desc = "Find file under cursor" })
  vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>")
  vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
  vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>")
  vim.keymap.set("n", "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
end

Plugin.opts = {
  defaults = {
    layout_strategy = "vertical",
    layout_config = {
      width = 0.99,
      height = 0.99,
    },
    sorting_strategy = "ascending",
    winblend = 0,
  },
}

function Plugin.config(_, opts)
  require("telescope").load_extension("fzf")
  require("telescope").setup(opts)
end

return Plugin
