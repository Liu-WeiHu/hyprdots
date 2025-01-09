-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 设置 Tab 键为 4 格缩进
vim.opt.tabstop = 4 -- 设置 Tab 键的宽度为 4
vim.opt.softtabstop = 4 -- 设定插入模式下的 Tab 键宽度
vim.opt.shiftwidth = 4 -- 设置自动缩进时的缩进宽度
vim.opt.expandtab = true -- 使用空格代替 Tab 键
