local M = {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      transparent_background = true,
      term_colors = true,
      integrations = {
        telescope = {
          enable = true,
        },
      },
      styles = {
        comments = {}, -- Change the style of comments
      },
    },
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
      },
    },
  },
}

return M
