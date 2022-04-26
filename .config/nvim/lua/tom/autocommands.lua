vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    require 'vim.highlight'.on_yank()
  end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "gitcommit",
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end
})
