-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- 重新映射
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
-- vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
-- vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- 使用黑洞寄存器配置 s, S, c, C 命令
vim.api.nvim_set_keymap("n", "s", '"_s', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "S", '"_S', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "c", '"_c', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "C", '"_C', { noremap = true, silent = true })

-- 处理可视模式下的情况
vim.api.nvim_set_keymap("v", "s", '"_s', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "S", '"_S', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "c", '"_c', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "C", '"_C', { noremap = true, silent = true })

-- 映射 插入模式下上下左右移动光标
vim.api.nvim_set_keymap("i", "<A-h>", "<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-j>", "<Down>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-k>", "<Up>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-l>", "<Right>", { noremap = true, silent = true })
