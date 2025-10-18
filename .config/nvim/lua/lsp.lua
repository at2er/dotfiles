local severity = vim.diagnostic.severity

vim.lsp.enable({
  'clangd',
  'gopls',
  'lua_ls',
  'pyright',
  'zls',
})

vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = false,
  float = {
    source = 'always',
  },
  signs = {
    text = {
      [severity.ERROR] = '>>',
      [severity.WARN] = '>>',
      [severity.INFO] = '^^',
      [severity.HINT] = '--'
    }
  },
  update_in_insert = true,
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function (_)
    local opt = { noremap = true, silent = true }
    vim.keymap.set('n', 'gh', vim.lsp.buf.hover, opt)
    vim.keymap.set('n', 'gll', vim.diagnostic.open_float, opt)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opt)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opt)
    vim.keymap.set('n', 'grr', ':Telescope lsp_references<cr>', opt)
    vim.keymap.set('n', 'grq', vim.lsp.buf.references, opt)
    vim.keymap.set('n', 'ga', vim.lsp.buf.code_action, opt)
    vim.keymap.set('n', '<leader>ll', ':Telescope diagnostics<cr>', opt)
    vim.keymap.set('n', '<leader>lq', vim.diagnostic.setqflist, opt)
    vim.keymap.set('n', '<leader>ln', vim.diagnostic.goto_next, opt)
    vim.keymap.set('n', '<leader>lp', vim.diagnostic.goto_prev, opt)
    vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, opt)
  end
})
