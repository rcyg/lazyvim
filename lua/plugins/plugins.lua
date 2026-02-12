return {
  { -- trouble.nvim symbol outline
    "folke/trouble.nvim",
    cmd = { "Trouble" },
    opts = {
      modes = {
        symbols = { -- Configure symbols mode
          win = {
            type = "split", -- split window
            relative = "win", -- relative to current window
            position = "right", -- right side
            size = 0.3, -- 30% of the window
          },
        },
      },
    },
    { -- gitsigns git blame etc
      "lewis6991/gitsigns.nvim",
      event = "LazyFile",
    },
    { -- remote ssh copy && paste
      "ojroques/nvim-osc52",
      config = function()
        require("osc52").setup({
          max_length = 0, -- 不限制长度
          trim = false, -- 不去掉末尾换行
        })
      end,
    },
    { -- markdown preview
      "OXY2DEV/markview.nvim",
    },
    { -- HTTP request && debug
      "mistweaverco/kulala.nvim",
      keys = {
        { "<leader>Rs", desc = "Send request" },
        { "<leader>Ra", desc = "Send all requests" },
        { "<leader>Rb", desc = "Open scratchpad" },
      },
      ft = { "http", "rest" },
      opts = {
        global_keymaps = true,
        global_keymaps_prefix = "<leader>R",
        kulala_keymaps_prefix = "",
      },
    },
    {
      "snirt/claudecode.nvim",
      dependencies = { "folke/snacks.nvim" },
      config = true,
      keys = {
        { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
        { "<leader>an", "<cmd>ClaudeCodeNew<cr>", desc = "New Claude Session" },
        { "<leader>ap", "<cmd>ClaudeCodeSessions<cr>", desc = "Pick Session" },
      },
    },
  },
}
