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
vim.keymap.set("n", "s", '"_s', { noremap = true, silent = true })
vim.keymap.set("n", "S", '"_S', { noremap = true, silent = true })
vim.keymap.set("n", "c", '"_c', { noremap = true, silent = true })
vim.keymap.set("n", "C", '"_C', { noremap = true, silent = true })

-- 处理可视模式下的情况
vim.keymap.set("v", "s", '"_s', { noremap = true, silent = true })
vim.keymap.set("v", "S", '"_S', { noremap = true, silent = true })
vim.keymap.set("v", "c", '"_c', { noremap = true, silent = true })
vim.keymap.set("v", "C", '"_C', { noremap = true, silent = true })

-- 映射 插入模式下上下左右移动光标
vim.keymap.set("i", "<A-h>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-j>", "<Down>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-k>", "<Up>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-l>", "<Right>", { noremap = true, silent = true })

-- 修改默认终端大小
local lazyterm = function()
  LazyVim.terminal(nil, {
    cwd = LazyVim.root(),
    size = { width = 0.6, height = 0.4 },
  })
end
vim.keymap.set("n", "<leader>ft", lazyterm, { desc = "Terminal (Root Dir)" })
vim.keymap.set("n", "<leader>fT", function()
  LazyVim.terminal()
end, { desc = "Terminal (cwd)" })
vim.keymap.set("n", "<c-/>", lazyterm, { desc = "Terminal (Root Dir)" })
vim.keymap.set("n", "<c-_>", lazyterm, { desc = "which_key_ignore" })
