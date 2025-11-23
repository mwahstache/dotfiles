--Start flavours
local theme = {
  base = "#d6ced3",
  mantle = "#dfdade",
  crust = "#f7f5f6",
  surface0 = "#bda8b8",
  surface1 = "#bda4a3",
  surface2 = "#687d81",
  overlay0 = "#38354e",
  overlay1 = "#15283b",
  overlay2 = "#687d81",
  text = "#15283b",
  rosewater = "#cc4870",
  flamingo = "#cc4870",
  pink = "#c638a0",
  mauve = "#a73dc7",
  red = "#bb262d",
  maroon = "#bb262d",
  peach = "#ae490f",
  yellow = "#ba7c00",
  green = "#067328",
  teal = "#00777d",
  sky = "#3b6dd2",
  sapphire = "#009da6",
  blue = "#2956b1",
  lavender = "#3b6dd2",
}
--End flavours

return {
  {
    "catppuccin/nvim",
    priority = 1000,
    opts = {
      transparent_background = true,
      color_overrides = {
        all = theme,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
    end
  },
}
