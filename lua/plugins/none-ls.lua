return {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup = ({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.formatting.cmake_format,
                --null_ls.builtins.formatting.glslc,
                null_ls.builtins.diagnostics.cppcheck,
            }
        })
        vim.keymap.set('n', '<leader>F', vim.lsp.buf.format, {})
    end
}
