-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 清除背景色
vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")
vim.cmd("highlight EndOfBuffer guibg=NONE ctermbg=NONE")
vim.cmd("highlight NeoTreeNormal guibg=NONE ctermbg=NONE")
vim.cmd("highlight NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE")
vim.cmd("highlight NeoTreeWinSeparator guibg=NONE ctermbg=NONE")
