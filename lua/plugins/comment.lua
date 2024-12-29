return {
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup({
                mappings = {
                    basic = true,
                    extra = false,
                    extended = false,
                },
            })
        end
    },
    {
        'rktjmp/highlight-current-n.nvim',
        config = function()
            require("highlight_current_n").setup({
                highlight_group = "IncSearch"
            })
        end
    },
}
