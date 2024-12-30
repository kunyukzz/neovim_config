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
}
