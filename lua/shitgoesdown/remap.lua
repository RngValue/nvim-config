vim.g.mapleader = " "

-- quality :3
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<ESC>", vim.cmd.noh)
vim.keymap.set({"n", "o", "x"}, "<leader>p", "\"_dP")

-- quality but mobile :3
vim.keymap.set({"n", "o", "x"}, "L", "$")
vim.keymap.set({"n", "o", "x"}, "H", "^")
