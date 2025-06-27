-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- Run gofmt + goimports on save

-- Run gofmt on save
-- local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = "*.go",
--   callback = function()
--     require("go.format").gofmt()
--   end,
--   group = format_sync_grp,
-- })

-- Run gofmt + goimports on save
local format_sync_grp = vim.api.nvim_create_augroup("goimports", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    require("go.format").goimports()
  end,
  group = format_sync_grp,
})

-- Autocmd: Set filetype to nginx for files in nginx-conf directory
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*/nginx-conf/*", "*/conf.d/*" },
  callback = function()
    vim.bo.filetype = "nginx"
  end,
})
