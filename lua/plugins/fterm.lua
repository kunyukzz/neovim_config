return {
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
                close_on_exit = false,     -- Close the terminal window on exit
                size = 30,
            })
        end,
    },
}
