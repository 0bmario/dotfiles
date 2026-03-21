-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set:
-- * check if we need to reload files when it changed
-- * highlight yanked text
-- * format on save
-- * remove trailing whitespace on save
-- * close some filetypes with <q>
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

-- Add any additional autocmds here

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "markdown.mdx" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    vim.opt_local.spell = true
  end,
})
