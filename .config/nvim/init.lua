require('options')
require('keymaps')
require('lsp')
require('core.lazy')

vim.cmd[[
" colorscheme catppuccin-mocha
colorscheme nothing
]]

if vim.g.neovide then
  vim.g.neovide_normal_opacity = 0.85
end

local nohlsearch = vim.api.nvim_create_augroup('nohlsearch', {clear = true})
vim.api.nvim_create_autocmd({'CursorHold', 'InsertEnter'}, {
  pattern = '*',
  group = nohlsearch,
  callback = function ()
    local key = vim.api.nvim_replace_termcodes('<cmd>nohlsearch<cr>', true, false, true)
    vim.api.nvim_feedkeys(key, 'm', true)
  end,
})
