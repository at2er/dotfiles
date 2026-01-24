local M = {
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
}

return M
