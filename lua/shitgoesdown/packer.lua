-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
   -- Packer can manage itself
   use 'wbthomason/packer.nvim'
   use 'nanozuki/tabby.nvim' 
   use {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      requires = { 
	 "nvim-lua/plenary.nvim",
	 "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	 "MunifTanjim/nui.nvim",
	 -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      }
   }
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
         config = {
            header = dashboard_header
         }
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
end)

