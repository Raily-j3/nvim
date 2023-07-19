return {
  "nvim-telescope/telescope.nvim",

  config = function()
    local actions = require("telescope.actions")
    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
        },
      },
    })
  end,

  keys = {
    { "<leader>/", false },
    {
      "<leader>.",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Grep",
    },
  },
}
