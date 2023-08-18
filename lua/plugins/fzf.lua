local m = { noremap = true }
return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    local fzf = require("fzf-lua")
    vim.keymap.set("n", "<c-e>", function()
        require('fzf-lua').fzf_exec("rg --files", {
        fzf_opts = {
            ['--preview-window'] = 'nohidden,50%',
            ['--preview'] = require'fzf-lua'.shell.preview_action_cmd(function(items)
            local ext = vim.fn.fnamemodify(items[1], ':e')
            if vim.tbl_contains({ "png", "jpg", "jpeg" }, ext) then
                return "viu -b " .. items[1]
            end
            return string.format("bat --style=default --color=always %s", items[1])
            end)
            },
        })
        end
    )
      -- fzf.live_grep_resume({ multiprocess = true })
      -- fzf.grep({ search = "", fzf_opts = { ["--layout"] = "default" } })
      -- fzf.files({ search = "", fzf_opts = { ["--layout"] = "default" } })

    require("fzf-lua").setup({
      keymap = {
        builtin = {
          ["<c-p>"] = "toggle-preview",
        },
        fzf = {
          ["ctrl-q"] = "abort",
          ["ctrl-e"] = "down",
          ["ctrl-u"] = "up",
          ["ctrl-h"] = "unix-line-discard",
          -- ["ctrl-d"] = "half-page-down",
          -- ["ctrl-u"] = "half-page-up",
          ["ctrl-n"] = "beginning-of-line",
          ["ctrl-a"] = "end-of-line",
          ["alt-a"] = "toggle-all",
          ["f3"] = "toggle-preview-wrap",
          ["f4"] = "toggle-preview",
          ["shift-down"] = "preview-page-down",
          ["shift-up"] = "preview-page-up",
        },
      },
    })

  end,
}

