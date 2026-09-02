local opt = vim.opt

opt.listchars = { tab = "> ", nbsp = "+" }
opt.fillchars = { eob = " " }
opt.cursorline = false
opt.showmode = false
opt.laststatus = 3
opt.pumblend = 0
opt.winblend = 0
opt.winborder = "none"
opt.pumheight = 8
opt.signcolumn = "yes:1"
opt.shortmess:append("sWIc")

vim.g.snacks_animate = false
