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
  {
    'ibhagwan/fzf-lua',
    cmd = 'FzfLua',
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "nvim-mini/mini.icons" },
    keys = {
      { '<leader>fb', '<cmd>FzfLua buffers<cr>'},
      { '<leader>ff', '<cmd>FzfLua files<cr>'},
      { '<leader>fg', '<cmd>FzfLua grep<cr>' },
      { '<leader>fr', '<cmd>FzfLua resume<cr>'},
    },
    opts = {
      winopts = {
        width = 1,
        row = 1,
        col = 0.50,
        backdrop = 100,
        border = 'none',
        preview = {
          border = 'none',
        },
      },
      fzf_opts = {
        ['--border']       = 'none',
        ['--info']         = 'inline',
        ['--layout']       = 'default',
        ['--no-scrollbar'] = true,
        ['--no-separator'] = true,
      },
      fzf_colors = {
        ["bg"]  = { "bg", { "Normal" } },
        ["bg+"] = { "bg", { "CursorLine", "Normal" } },
      },
    },
  },
}
