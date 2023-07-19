return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim", lazy = false },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
