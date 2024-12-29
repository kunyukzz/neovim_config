return {
    'jakemason/ouroboros',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function()
        require('ouroboros').setup({
            extension_preferences_table = {
                c = { h = 1, hpp = 2 },
                h = { c = 1, cpp = 2 },
                cpp = { hpp = 1, h = 2 },
                hpp = { cpp = 1, c = 2 },
            },
            -- if this is true and the matching file is already open in a pane, we'll
            -- switch to that pane instead of opening it in the current buffer
            switch_to_open_pane_if_possible = false,
        })

        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'cpp', 'c' },
            callback = function()
                vim.api.nvim_buf_set_keymap(0, 'n', '<C-o>', ':Ouroboros<CR>', { noremap = true, silent = true })
            end
        })
    end
}
