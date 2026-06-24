return {
  "folke/tokyonight.nvim",
  priority = 1000,
  opts = {
    style = "night",
    transparent = true,
    terminal_colors = true,
    styles = {
      comments = { italic = true },
      keywords = { italic = true },
      sidebars = "transparent",
      floats = "transparent",
    },
    on_colors = function(colors)
      colors.fg = "#c8dfe8"
      colors.cyan = "#00d4b8"
      colors.teal = "#2ee8a0"
      colors.green = "#2ee8a0"
      colors.blue = "#5ab4f0"
    end,
  },
}
