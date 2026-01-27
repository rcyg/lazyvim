return {
  { -- nvim-lspconfig
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true },
      servers = {
        jdtls = {},
      },
    },
  },
  { -- mason.nvim
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "gopls",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "jdtls",
      })
    end,
  },
  { -- golang
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    enabled = true,
    config = function()
      require("go").setup({
        tag_transform = "snakecase",
      })
    end,
    keys = {
      { "<leader>Gfs", "<cmd>GoFillStruct<cr>", desc = "Go Fill Struct" },
      { "<leader>Gat", "<cmd>GoAddTag<cr>", desc = "Go Add Tag" },
    },
  },
  {
    "nvim-java/nvim-java",
    config = function()
      require("java").setup({
        java_debug_adapter = {
          enable = false,
        },
      })
      vim.lsp.enable("jdtls")
    end,
  },
}
