vim.opt.termguicolors = true
vim.o.background = "dark"

vim.lsp.config("jdtls", {
  settings = {
    java = {
      configuration = {
        runtimes = {
          {
            name = "JavaSE-21",
            path = "$HOME/.jenv/versions/21",
            default = true,
          },
        },
      },
    },
  },
})
