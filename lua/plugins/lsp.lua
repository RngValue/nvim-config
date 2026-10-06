local mason_ensure_installed = { "lua_ls" }

local lspconfig_deps = {
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},
    {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
}

local lspconfig_config = function()
    local cmp = require('cmp')
    local cmp_select = {behavior = cmp.SelectBehavior.Select}
    cmp.setup({
        sources = {
            {name = 'path'},
            {name = 'nvim_lsp'},
            {name = 'nvim_lua'},
        },
        mapping = cmp.mapping.preset.insert({
            ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
            ['<Tab>'] = cmp.mapping.confirm({ select = true }),
            ['<C-Space>'] = cmp.mapping.complete(),
        }),
        window = {
            documentation = cmp.config.window.bordered(),
        },
    })
end

return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = mason_ensure_installed,
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            {
                "neovim/nvim-lspconfig",
                dependencies = lspconfig_deps,
                config = lspconfig_config
            },
        },
    }
}
