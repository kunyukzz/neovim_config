return {
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require('lualine').setup({
                options = {
                    icons_enabled = false,
                    --theme = 'codedark',
                    theme = 'dracula',
                    component_separators = { left = '', right = '' },
                    --section_separators = { left = '', right = '' },
                    section_separators = { left = '', right = '' },
                    disabled_filetypes = { 'NvimTree', 'packer' },
                },
                sections = {
                lualine_c = { { 'filename', path = 1 } }, -- Show full file path
                lualine_z = { 'location' , { function() return os.date('%H:%M:%S') end } },
            },

                
            })
        end
    },
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            sidebar_filetypes = {
                -- Use the default values: {event = 'BufWinLeave', text = '', align = 'left'}
                NvimTree = true,
                -- Or, specify the text used for the offset:
                undotree = {
                    text = 'undotree',
                    align = 'center', -- *optionally* specify an alignment (either 'left', 'center', or 'right')
                },
                -- Or, specify the event which the sidebar executes when leaving:
                ['neo-tree'] = { event = 'BufWipeout' },
                -- Or, specify all three
                Outline = { event = 'BufWinLeave', text = 'symbols-outline', align = 'right' },
            },
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
        vim.keymap.set('n', '<Tab>', ':BufferNext<CR>', { silent = true }),
        vim.keymap.set('n', '<S-Tab>', ':BufferPrevious<CR>', { silent = true }),
        vim.keymap.set('n', '<leader>bd', ':BufferClose<CR>', { silent = true }),
        vim.keymap.set('n', '<leader>bp', ':BufferPick<CR>', { silent = true }),
        vim.keymap.set('n', '<leader>b>', ':BufferMoveNext<CR>', { silent = true }),
        vim.keymap.set('n', '<leader>b<', ':BufferMovePrevious<CR>', { silent = true })
    },

}
