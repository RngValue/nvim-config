local dashboard_theme = 'doom'
local dashboard_config = {
    header = {
        [[  ]],
        [[  ]],
        [[  ]],
        [[              ___                     ___                  ]],
        [[     o O O   | _ \   ___     ___     | _ \   ___    __ _   ]],
        [[    o        |  _/  / -_)   / -_)    |  _/  / -_)  / _` |  ]],
        [[   TS__[O]  _|_|_   \___|   \___|   _|_|_   \___|  \__,_|  ]],
        [[  {======|_| """ |_|"""""|_|"""""|_| """ |_|"""""|_|"""""| ]],
        [[ ./o--000'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-' ]],
        [[  ]],
        [[  ]],
        [[  ]]
    },
    center = {
        {
            icon = ' ',
            desc = 'Find File           ',
            key = 'a',
            action = 'Telescope find_files'
        },
        {
            icon = ' ',
            desc = 'Explore             ',
            key = 'b',
            action = 'Explore'
        },
        {
            icon = ' ',
            desc = 'Quit                ',
            key = '<ESC>',
            action = 'quit'
        },
    },
    vertical_center = true,
}

return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            theme = dashboard_theme,
            config = dashboard_config
        }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
