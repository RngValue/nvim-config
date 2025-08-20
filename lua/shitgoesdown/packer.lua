vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nanozuki/tabby.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }
    use "numToStr/FTerm.nvim"
    use "jiangmiao/auto-pairs"
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.6",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
    use {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
        require('dashboard').setup {
            theme = dashboard_theme,
            config = dashboard_config 
        }
        end,
        requires = {'nvim-tree/nvim-web-devicons'}
    }
    use {
        'neovim/nvim-lspconfig',
        requires = {
            -- LSP Support
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
end)

