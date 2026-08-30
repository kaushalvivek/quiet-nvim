local opt = vim.opt

opt.listchars = { tab = "> ", nbsp = "+" }
opt.fillchars = {
  eob = " ",
  vert = " ",
  horiz = " ",
  horizup = " ",
  horizdown = " ",
  vertleft = " ",
  vertright = " ",
  verthoriz = " ",
}
opt.cursorline = false
opt.showmode = false
opt.cmdheight = 0
opt.laststatus = 3
opt.pumblend = 0
opt.winblend = 0
opt.winborder = "none"
opt.pumheight = 8
opt.scrolloff = 8
opt.signcolumn = "yes:1"
opt.shortmess:append("sWIc")
opt.termguicolors = true

vim.g.snacks_animate = false
