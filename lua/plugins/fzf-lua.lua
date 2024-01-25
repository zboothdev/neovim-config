return {
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- calling `setup` is optional for customization
      require("fzf-lua").setup({
        winopts = {
          width = 0.99,
          height = 0.99,
          preview = {
            layout = "vertical",
            vertical = "up:50",
          },
        },
      })
    end,
  },
}
