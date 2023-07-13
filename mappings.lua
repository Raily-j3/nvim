---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<Esc>"] = { ":noh <CR>", "Clear highlights", opts = { silent = true } },
    -- switch between windows
    ["<leader>h"] = { "<C-w>h", "Window left" },
    ["<leader>l"] = { "<C-w>l", "Window right" },
    ["<leader>j"] = { "<C-w>j", "Window down" },
    ["<leader>k"] = { "<C-w>k", "Window up" },
    -- close and save
    ["<leader>x"] = {
      ":qa<CR>", "Close all"
    },
    ["<leader>s"] = { "<cmd> w <CR>", "Save file" },
    ["<leader>vm"] = { ":e $HOME/.config/nvim/lua/custom/mappings.lua<CR>", "Open mappings", opts = { nowait = true } },
    ["<leader>vp"] = { ":e $HOME/.config/nvim/lua/custom/plugins.lua<CR>", "Open plugins", opts = { nowait = true } },
    -- move
    ["H"] = { "_" },
    ["L"] = { "g_" },
    ["J"] = { "5<C-e>" },
    ["K"] = { "5<C-y>" },
  },

  v = {
    ["H"] = { "_" },
    ["L"] = { "g_" },
    ["J"] = { "5<C-e>" },
    ["K"] = { "5<C-y>" },

    ["<"] = { "<gv" },
    [">"] = { ">gv" },
  }
}

M.tabufline = {
  plugin = true,

  n = {
    -- cycle through buffers
    ["<C-l>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["<C-h>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },

    -- close buffer + hide terminal buffer
    ["<leader>q"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "Close buffer",
    },
  },
}

M.nvterm = {

  t = {
    -- toggle in terminal mode
    ["<A-h>"] = { function () end },
  },

  n = {
    -- toggle in terminal mode
    ["<A-h>"] = {  function () end },
  }
}

M.lspconfig = {

  n = {
    ["<C-k>"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },
  }
}

return M
