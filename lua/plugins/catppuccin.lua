return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
        require('catppuccin').setup {
            flavour = 'mocha',
            background = { dark = 'mocha' },
            transparent_background = false,
            integrations = {
                treesitter = true,
                cmp = true,
                gitsigns = true,
                telescope = true,
                neotree = false,
                which_key = true,
                dashboard = true,
                bufferline = true,
            },
            color_overrides = {
                mocha = {
                    base = "#0f0f0f",
                   -- mantle = "#000000",
                    crust = "#000000",
                },
            },
        }
        vim.cmd.colorscheme "catppuccin"
        vim.api.nvim_set_hl(0, 'LineNr', { fg = '#8f8e86' })
        vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#27db57' })
    end
}
