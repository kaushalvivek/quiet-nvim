return {
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        format = {
          cmdline = { pattern = "^:", icon = "", lang = "" },
          search_down = { kind = "search", pattern = "^/", icon = " ", lang = "" },
          search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "" },
          filter = { pattern = "^:%s*!", icon = "$", lang = "" },
          lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "" },
          help = { pattern = "^:%s*he?l?p?%s+", icon = "󰋖", lang = "" },
        },
      },
    },
  },
}
