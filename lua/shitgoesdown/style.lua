vim.cmd("set relativenumber")
vim.cmd("set cursorline")

require("catppuccin").setup({
	transparent_background = true
})

vim.cmd("colorscheme catppuccin")

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
