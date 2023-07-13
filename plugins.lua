local overrides = require("custom.configs.overrides")
local cmp = require "cmp"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "kevinhwang91/nvim-hlslens",
    lazy=false,
    config = function()
      require("hlslens").setup({
        nearest_only = {
            description = [[Only add lens for the nearest matched instance and ignore others]],
            default = true
        },
      })
    end
  },

  {
    "petertriho/nvim-scrollbar",
    lazy = false,
    config = function()
      require('gitsigns').setup()
      require("scrollbar.handlers.gitsigns").setup()
      require("scrollbar").setup({
          show = true,
          show_in_active_only = false,
          set_highlights = true,
          folds = 1000, -- handle folds, set to number to disable folds if no. of lines in buffer exceeds this
          max_lines = false, -- disables if no. of lines in buffer exceeds this
          hide_if_all_visible = false, -- Hides everything if all lines are visible
          throttle_ms = 100,
          handle = {
              text = " ",
              blend = 30, -- Integer between 0 and 100. 0 for fully opaque and 100 to full transparent. Defaults to 30.
              color = nil,
              color_nr = nil, -- cterm
              highlight = "CursorColumn",
              hide_if_all_visible = true, -- Hides handle if all lines are visible
          },
          marks = {
              Cursor = {
                  text = "•",
                  priority = 0,
                  gui = nil,
                  color = nil,
                  cterm = nil,
                  color_nr = nil, -- cterm
                  highlight = "Normal",
              },
              Search = {
                  text = { "-", "=" },
                  priority = 1,
                  gui = nil,
                  color = nil,
                  cterm = nil,
                  color_nr = nil, -- cterm
                  highlight = "Search",
              },
              Error = {
                  text = { "-", "=" },
                  priority = 2,
                  gui = nil,
                  color = nil,
                  cterm = nil,
                  color_nr = nil, -- cterm
                  highlight = "DiagnosticVirtualTextError",
              },
              Warn = {
                  text = { "-", "=" },
                  priority = 3,
                  gui = nil,
                  color = nil,
                  cterm = nil,
                  color_nr = nil, -- cterm
                  highlight = "DiagnosticVirtualTextWarn",
              },
              Info = {
                  text = { "-", "=" },
                  priority = 4,
                  gui = nil,
                  color = nil,
                  cterm = nil,
                  color_nr = nil, -- cterm
                  highlight = "DiagnosticVirtualTextInfo",
              },
              Hint = {
                  text = { "-", "=" },
                  priority = 5,
                  gui = nil,
                  color = nil,
                  cterm = nil,
                  color_nr = nil, -- cterm
                  highlight = "DiagnosticVirtualTextHint",
              },
              Misc = {
                  text = { "-", "=" },
                  priority = 6,
                  gui = nil,
                  color = nil,
                  cterm = nil,
                  color_nr = nil, -- cterm
                  highlight = "Normal",
              },
              GitAdd = {
                  text = "┆",
                  priority = 7,
                  gui = nil,
                  color = nil,
                  cterm = nil,
                  color_nr = nil, -- cterm
                  highlight = "GitSignsAdd",
              },
              GitChange = {
                  text = "┆",
                  priority = 7,
                  gui = nil,
                  color = nil,
                  cterm = nil,
                  color_nr = nil, -- cterm
                  highlight = "GitSignsChange",
              },
              GitDelete = {
                  text = "▁",
                  priority = 7,
                  gui = nil,
                  color = nil,
                  cterm = nil,
                  color_nr = nil, -- cterm
                  highlight = "GitSignsDelete",
              },
          },
          excluded_buftypes = {
              "terminal",
          },
          excluded_filetypes = {
              "cmp_docs",
              "cmp_menu",
              "noice",
              "prompt",
              "TelescopePrompt",
          },
          autocmd = {
              render = {
                  "BufWinEnter",
                  "TabEnter",
                  "TermEnter",
                  "WinEnter",
                  "CmdwinLeave",
                  "TextChanged",
                  "VimResized",
                  "WinScrolled",
              },
              clear = {
                  "BufWinLeave",
                  "TabLeave",
                  "TermLeave",
                  "WinLeave",
              },
          },
          handlers = {
              cursor = true,
              diagnostic = true,
              gitsigns = false, -- Requires gitsigns
              handle = true,
              search = false, -- Requires hlslens
              ale = false, -- Requires ALE
          },
      })
    end
  },

  {
    "nvim-cmp",
    opts = {
      mapping = {
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<Tab>"] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Insert,
          select = true,
        },
        ["<CR>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif require("luasnip").expand_or_jumpable() then
            vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
          else
            fallback()
          end
        end, {
          "i",
          "s",
        }),
      }
    }
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",

    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
      {
        "S",
        mode = { "n", "o", "x" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "Remote Flash",
      },
      {
        "R",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search()
        end,
        desc = "Flash Treesitter Search",
      },
      {
        "<c-s>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "Toggle Flash Search",
      },
    },
  },

  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    lazy = false,
    keys = {
      {
        "<C-g>",
        mode = { "n" },
        function()
          require("lazygit").lazygit()
        end,
        desc = "LazyGit",
      },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
  },
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
