vim.g.mapleader = " "

-- Sex!
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>r", "<C-6>")

-- da best uwu
vim.keymap.set({"o", "x"}, "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>c", "yiw:%s/<C-R>\"//gc<left><left><left>")
vim.keymap.set("x", "<leader>c", "y:%s/<C-R>\"//gc<left><left><left>")

-- quality :3
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")
vim.keymap.set("n", "<ESC>", vim.cmd.noh)

-- mobility Ü
vim.keymap.set({"n", "o", "x"}, "L", "$")
vim.keymap.set({"n", "o", "x"}, "H", "^")

-- kurva why do I have to speak slavic
vim.keymap.set({"n", "o", "x"}, "+", "1")
vim.keymap.set({"n", "o", "x"}, "ě", "2")
vim.keymap.set({"n", "o", "x"}, "š", "3")
vim.keymap.set({"n", "o", "x"}, "č", "4")
vim.keymap.set({"n", "o", "x"}, "ř", "5")
vim.keymap.set({"n", "o", "x"}, "ž", "6")
vim.keymap.set({"n", "o", "x"}, "ý", "7")
vim.keymap.set({"n", "o", "x"}, "á", "8")
vim.keymap.set({"n", "o", "x"}, "í", "9")
vim.keymap.set({"n", "o", "x"}, "é", "0")

