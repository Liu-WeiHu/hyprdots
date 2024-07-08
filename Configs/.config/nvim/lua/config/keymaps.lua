-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.del({ "n", "x", "o" }, "s")
-- vim.keymap.del({ "n", "x", "o" }, "S")
-- 使用黑洞寄存器配置 s, S, c, C 命令
vim.api.nvim_set_keymap('n', 's', '"_s', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'S', '"_S', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'c', '"_c', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'C', '"_C', { noremap = true, silent = true })

-- 处理可视模式下的情况
vim.api.nvim_set_keymap('v', 's', '"_s', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'S', '"_S', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'c', '"_c', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'C', '"_C', { noremap = true, silent = true })
