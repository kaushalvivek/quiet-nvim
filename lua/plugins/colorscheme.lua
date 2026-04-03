return {
  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "zenbones-theme/zenbones.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "rktjmp/lush.nvim" },
  },
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      set_dark_mode = function()
        vim.api.nvim_set_option_value("background", "dark", {})
        vim.cmd.colorscheme("lackluster")
        io.write("\27]12;#cccccc\27\\")
      end,
      set_light_mode = function()
        vim.api.nvim_set_option_value("background", "light", {})
        vim.cmd.colorscheme("zenwritten")
        io.write("\27]12;#353535\27\\")
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "lackluster",
    },
  },
}
