local prose = vim.api.nvim_create_augroup("prose", { clear = true })

local function prose_window(buf)
  local wo = vim.wo[0][0]
  wo.number = false
  wo.relativenumber = false
  wo.signcolumn = "no"
  wo.wrap = true
  wo.linebreak = true
  wo.breakindent = true
  wo.conceallevel = 2
  wo.scrolloff = 999
  wo.spell = false
  vim.bo[buf].textwidth = 0
end

local function enter_zen(buf)
  if vim.bo[buf].filetype ~= "markdown" or vim.fn.argc() > 1 or vim.b[buf].zen_entered then
    return
  end
  vim.b[buf].zen_entered = true
  vim.schedule(function()
    if not (Snacks.zen.win and Snacks.zen.win:valid()) then
      Snacks.zen()
    end
  end)
end

vim.api.nvim_create_autocmd("FileType", {
  group = prose,
  pattern = { "markdown", "text", "gitcommit" },
  callback = function(ev)
    prose_window(ev.buf)
    enter_zen(ev.buf)
  end,
})

if vim.tbl_contains({ "markdown", "text", "gitcommit" }, vim.bo.filetype) then
  prose_window(vim.api.nvim_get_current_buf())
  enter_zen(vim.api.nvim_get_current_buf())
end

vim.api.nvim_create_autocmd("ColorScheme", {
  group = prose,
  callback = function()
    local bg = vim.api.nvim_get_hl(0, { name = "Normal" }).bg
    for _, group in ipairs({
      "NormalFloat",
      "FloatBorder",
      "FloatTitle",
      "Pmenu",
      "PmenuSbar",
      "PmenuThumb",
      "WinSeparator",
      "SignColumn",
      "LineNr",
      "StatusLine",
      "StatusLineNC",
      "TelescopeNormal",
      "TelescopeBorder",
      "TelescopePromptBorder",
      "TelescopeResultsBorder",
      "TelescopePreviewBorder",
      "NoiceCmdlinePopup",
      "NoiceCmdlinePopupBorder",
      "SnacksNotifierBorderInfo",
      "SnacksNotifierBorderWarn",
      "SnacksNotifierBorderError",
      "SnacksNotifierInfo",
      "SnacksNotifierWarn",
      "SnacksNotifierError",
      "WhichKeyNormal",
      "WhichKeyBorder",
    }) do
      vim.api.nvim_set_hl(0, group, { bg = bg })
    end
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = bg, bg = bg })
    vim.api.nvim_set_hl(0, "FloatBorder", { fg = bg, bg = bg })
    vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = bg, bg = bg })
    vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = bg, bg = bg })
    vim.api.nvim_set_hl(0, "RenderMarkdownCode", { bg = bg })
    for i = 1, 6 do
      vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i .. "Bg", { bg = bg })
    end
    local comment = vim.api.nvim_get_hl(0, { name = "Comment" })
    vim.api.nvim_set_hl(0, "Comment", { fg = comment.fg, italic = true, bold = false })
    vim.api.nvim_set_hl(0, "SnacksIndent", { fg = bg })
  end,
})
