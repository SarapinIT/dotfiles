-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

--[[ Open all folds when open file ]]
local openfold_group = vim.api.nvim_create_augroup('OpenAllFolds', {clear = true})
vim.api.nvim_create_autocmd({"BufReadPost", "FileReadPost"}, {
  callback = function()
    vim.api.nvim_command("normal zR")
  end,
  group = openfold_group,
  pattern = '*',
})
