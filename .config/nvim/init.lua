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
