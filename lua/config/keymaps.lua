-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<A-j>", "", {})
map("n", "<A-k>", "", {})
map("i", "<A-k>", "", {})
map("i", "<A-j>", "", {})
map("v", "<A-j>", "", {})
map("v", "<A-k>", "", {})
map("n", "<C-A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<C-A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<C-A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<C-A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<C-A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<C-A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

map("n", "<leader>d", "<C-W>c", { desc = "Delete window", remap = true })
map("n", "<leader>w", function() require("mini.bufremove").delete(0, false) end, { desc = "Delete Buffer", nowait = true })
map("n", "<leader>W", function() require("mini.bufremove").delete(0, true) end, { desc = "Delete Buffer(force)", nowait = true })

-- move
map("n", "<leader>j", "<C-W>j", { desc = "" })
map("n", "<leader>k", "<C-W>k", { desc = "" })
map("n", "<leader>h", "<C-W>h", { desc = "" })
map("n", "<leader>l", "<C-W>l", { desc = "" })
map("n", "H", "_", { desc = "" })
map("n", "L", "g_", { desc = "" })
map("n", "J", "5<C-e>", { desc = "" })
map("n", "K", "5<C-y>", { desc = "" })
map("v", "H", "_", { desc = "" })
map("v", "L", "g_", { desc = "" })
map("v", "J", "5<C-e>", { desc = "" })
map("v", "K", "5<C-y>", { desc = "" })

-- buffers
if Util.has("bufferline.nvim") then
  map("n", "<C-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  map("n", "<C-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
else
  map("n", "<C-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  map("n", "<C-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
end

map("n", "gh", vim.lsp.buf.hover, { desc = "" })
