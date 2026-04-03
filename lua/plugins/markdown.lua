return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      preset = "obsidian",
      debounce = 50,
      max_file_size = 20.0,

      anti_conceal = {
        enabled = true,
        above = 0,
        below = 0,
        ignore = {
          code_background = true,
          sign = true,
          indent = true,
          virtual_lines = true,
          head_background = true,
        },
      },

      win_options = {
        showbreak = { default = "", rendered = "  " },
        breakindent = { default = false, rendered = true },
        breakindentopt = { default = "", rendered = "" },
      },

      heading = {
        sign = false,
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
        position = "inline",
        width = "full",
        border = false,
      },

      code = {
        sign = false,
        style = "full",
        width = "full",
        border = "none",
        left_pad = 2,
        right_pad = 2,
      },

      dash = {
        icon = "─",
      },

      bullet = {
        icons = { "●", "○", "◆", "◇" },
      },

      checkbox = {
        unchecked = {
          icon = "󰄱 ",
        },
        checked = {
          icon = "󰱒 ",
          scope_highlight = "@markup.strikethrough",
        },
      },

      quote = {
        icon = "▎",
      },

      pipe_table = {
        preset = "round",
        style = "full",
      },

      sign = {
        enabled = false,
      },

      indent = {
        enabled = false,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
      servers = {
        marksman = {
          handlers = {
            ["textDocument/publishDiagnostics"] = function() end,
          },
        },
      },
    },
  },
}
