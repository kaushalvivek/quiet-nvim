return {
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        view = "cmdline",
        format = {
          cmdline = { pattern = "^:", icon = ":", lang = "vim" },
          search_down = { kind = "search", pattern = "^/", icon = "/", lang = "regex" },
          search_up = { kind = "search", pattern = "^%?", icon = "?", lang = "regex" },
          filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
          lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "lua", lang = "lua" },
          help = { pattern = "^:%s*he?l?p?%s+", icon = "help", lang = "" },
        },
      },
      messages = { view_search = false },
      presets = {
        bottom_search = true,
        command_palette = false,
        long_message_to_split = true,
        lsp_doc_border = false,
      },
      lsp = {
        progress = { enabled = false },
        signature = { enabled = false },
        hover = { opts = { border = "none" } },
      },
      routes = {
        { filter = { event = "msg_show", kind = "" }, opts = { skip = true } },
        { filter = { event = "msg_show", kind = { "echo", "echomsg" }, find = "written" }, opts = { skip = true } },
        { filter = { event = "msg_show", find = "lines? yanked" }, opts = { skip = true } },
        { filter = { event = "msg_show", find = "more lines?" }, opts = { skip = true } },
        { filter = { event = "msg_show", find = "fewer lines?" }, opts = { skip = true } },
        { filter = { event = "msg_show", find = "^E486" }, view = "mini" },
        { filter = { event = "notify", min_height = 10 }, view = "split" },
      },
      views = {
        mini = { border = { style = "none" }, win_options = { winblend = 0 } },
        cmdline_popup = { border = { style = "none" } },
      },
    },
  },
}
