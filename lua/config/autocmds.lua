local prose = vim.api.nvim_create_augroup("prose", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = prose,
  pattern = { "markdown", "text", "gitcommit" },
  callback = function(ev)
    local wo = vim.wo[0][0]
    wo.number = false
    wo.relativenumber = false
    wo.wrap = true
    wo.linebreak = true
    wo.breakindent = true
    wo.conceallevel = 2
    vim.bo[ev.buf].textwidth = 0
  end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  group = prose,
  callback = function()
    local bg = vim.api.nvim_get_hl(0, { name = "Normal" }).bg
    local sep = vim.api.nvim_get_hl(0, { name = "Comment" }).fg
    for _, group in ipairs({
      "NormalFloat", "FloatBorder", "FloatTitle", "Pmenu",
      "TelescopeNormal", "TelescopeBorder", "TelescopePromptBorder", "TelescopeResultsBorder", "TelescopePreviewBorder",
      "WhichKeyNormal", "WhichKeyBorder",
    }) do
      vim.api.nvim_set_hl(0, group, { bg = bg })
    end
    vim.api.nvim_set_hl(0, "FloatBorder", { fg = bg, bg = bg })
    vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = bg, bg = bg })
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = sep, bg = bg })
    vim.api.nvim_set_hl(0, "RenderMarkdownCode", { bg = bg })
    for i = 1, 6 do
      vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i .. "Bg", { bg = bg })
    end
  end,
})
