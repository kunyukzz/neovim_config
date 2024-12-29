return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        cmd = 'Neotree',
        keys = {
            { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal' },
        },
        opts = {
            filesystem = {
                window = {
                    width = 35,
                    mappings = {
                        ['\\'] = 'close_window',
                    },
                },
                filtered_items = {
                    --visible = true,
                    show_hidden_count = false,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    never_show = { ".git", ".cache" }
                }
            }
        }
    },
    {
        's1n7ax/nvim-window-picker',
        name = 'window-picker',
        event = 'VeryLazy',
        version = '2.*',
        opts = {}
    }
}
