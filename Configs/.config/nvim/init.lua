-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 清除背景色
vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")
vim.cmd("highlight EndOfBuffer guibg=NONE ctermbg=NONE")
vim.cmd("highlight NeoTreeNormal guibg=NONE ctermbg=NONE")
vim.cmd("highlight NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE")
vim.cmd("highlight NeoTreeWinSeparator guibg=NONE ctermbg=NONE")

-- 设置 Tab 键为 4 格缩进
vim.opt.tabstop = 4 -- 设置 Tab 键的宽度为 4
vim.opt.softtabstop = 4 -- 设定插入模式下的 Tab 键宽度
vim.opt.shiftwidth = 4 -- 设置自动缩进时的缩进宽度
vim.opt.expandtab = true -- 使用空格代替 Tab 键
