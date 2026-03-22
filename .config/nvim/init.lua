require('options')
require('keymaps')
require('lsp')
require('core.lazy')

vim.cmd[[
colorscheme catppuccin-mocha
" colorscheme tokyonight
syntax on
" colorscheme nothing
]]

if vim.g.neovide then
  -- vim.g.neovide_floating_shadow = true
  -- vim.g.neovide_floating_z_height = 100
  -- vim.g.neovide_light_angle_degrees = 45
  -- vim.g.neovide_light_radius = 5
  vim.g.neovide_normal_opacity = 0.85
  vim.o.guifont = "Maple Mono Normal NL NF CN:size=12"
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
