require("catppuccin").setup({
    flavour = "macchiato",
	transparent_background = true,
    float = {
        transparent = true
    }
})

vim.cmd("colorscheme catppuccin")

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.signcolumn = "yes"
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
