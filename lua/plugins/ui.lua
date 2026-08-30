return {
  { "akinsho/bufferline.nvim", enabled = false },
  { "folke/tokyonight.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },

  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },
      scroll = { enabled = false },
      indent = { enabled = false },
      dim = { enabled = false },
      statuscolumn = { enabled = false },
      notifier = {
        timeout = 2500,
        style = "minimal",
        top_down = false,
        margin = { top = 0, right = 1, bottom = 1 },
        icons = { error = "", warn = "", info = "", debug = "", trace = "" },
      },
      zen = {
        toggles = { dim = false, git_signs = false, mini_diff_signs = false, diagnostics = false, inlay_hints = false },
        show = { statusline = false, tabline = false },
        win = {
          width = 76,
          backdrop = { transparent = false, blend = 0 },
          wo = {
            number = false,
            relativenumber = false,
            signcolumn = "no",
            scrolloff = 999,
            wrap = true,
            linebreak = true,
            breakindent = true,
          },
        },
        zoom = { win = { backdrop = false } },
      },
      styles = {
        notification = { border = "none", wo = { winblend = 0 } },
        zen = { border = "none" },
      },
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local function fg(name)
        return { fg = Snacks.util.color(name) }
      end
      opts.options.component_separators = ""
      opts.options.section_separators = ""
      opts.options.globalstatus = true
      opts.options.theme = {
        normal = { a = fg("Comment"), b = fg("Comment"), c = fg("Comment") },
        inactive = { a = fg("Comment"), b = fg("Comment"), c = fg("Comment") },
      }
      opts.sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          {
            function()
              return " "
            end,
            padding = 0,
          },
          { "filename", path = 1, symbols = { modified = " ●", readonly = " ", unnamed = "" }, color = fg("Normal") },
        },
        lualine_x = {
          {
            function()
              return vim.fn.wordcount().words .. " words"
            end,
            cond = function()
              return vim.bo.filetype == "markdown"
            end,
          },
          { "diagnostics", symbols = { error = "● ", warn = "● ", info = "● ", hint = "● " } },
          { "progress" },
          {
            function()
              return " "
            end,
            padding = 0,
          },
        },
        lualine_y = {},
        lualine_z = {},
      }
      opts.extensions = {}
    end,
  },
}
