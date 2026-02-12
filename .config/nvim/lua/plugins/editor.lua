return {
  {
    'nvim-mini/mini.files',
    enabled = true,
    keys = {
      ---@diagnostic disable-next-line: undefined-global
      { '<leader>e', function () MiniFiles.open() end }
    },
    opts = {},
  },
  {
    'nvim-mini/mini.diff',
    enabled = false,
    event = { 'VeryLazy' },
    opts = {
      view = {
        style = 'sign',
        signs = { add = '│', change = '│', delete = '│' }
      }
    },
  },
  {
    'machakann/vim-swap',
    keys = { 'g<', 'g>', 'gs', },
  },
  {
    'norcalli/nvim-colorizer.lua',
    event = { 'VeryLazy' },
    opts = {},
  },
  {
    'kevinhwang91/nvim-bqf',
    event = { 'VeryLazy' },
    opts = {},
  },
  {
    'X3eRo0/dired.nvim',
    enabled = false,
    dependencies = 'MunifTanjim/nui.nvim',
    keys = {
      { '<leader>e', '<cmd>Dired<cr>' },
    },
    opts = {},
  },
}
