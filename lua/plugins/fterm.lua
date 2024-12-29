return {
    {
        'numToStr/FTerm.nvim',
        config = function()
            require('FTerm').setup {
                border = 'double',
            }

            -- Define a key mapping to toggle the FTerm window
            vim.api.nvim_set_keymap('n', 'TR', '<CMD>lua require("FTerm").toggle()<CR>',
                { noremap = true, silent = true })

            vim.keymap.set('n', '<leader>T', function()
                require('FTerm').toggle()
            end, { desc = 'float [T]erminal' })

            vim.keymap.set('t', '<leader>Q', function()
                vim.cmd 'stopinsert'     -- Exit terminal insert mode
                require('FTerm').close() -- Close FTerm
            end, { desc = 'Close FTerm with [Q] in terminal mode' })
        end,
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*", -- or specify a version
        config = function()
            require("toggleterm").setup({
                -- You can customize options here
                open_mapping = [[<c-\>]], -- Default keybinding to toggle the terminal
                shade_filetypes = {},
                shade_terminals = true,
                shading_factor = '1', -- Adjust the shading
                start_in_insert = true,
                insert_mappings = true,
                terminal_mappings = true,
                persist_size = true,
                direction = 'horizontal', -- 'horizontal', 'vertical', or 'float'
                close_on_exit = true,     -- Close the terminal window on exit
                size = 30,
            })

            vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>ToggleTerm<cr>',
                { noremap = true, silent = true, desc = 'Toggle terminal' })
        end,
    },
}
