return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require('lspconfig')

            local function get_project_root()
                return lspconfig.util.root_pattern(
                    'compile_commands.json',  -- Preferred for C/C++ projects
                    'compile_flags.txt',     -- Alternative for simpler setups
                    '.git'                   -- Fallback to Git repository root
                )(vim.fn.expand('%:p')) or vim.fn.getcwd()
            end

            lspconfig.clangd.setup({
                capabilities = capabilities,
                cmd = { "clangd",
                    "--background-index",
                    "--clang-tidy",
                    "--header-insertion=never" },

                root_dir = get_project_root, -- Dynamically determine the project root
                settings = {
                    clangd = {
                        fallbackFlags = {
                            "-std=c++17",
                            --"-I" .. get_project_root() .. "/include",
                            --"-I" .. os.getenv("VULKAN_SDK") .. "/include", -- Vulkan SDK headers
                        },
                    },
                },
            })
            vim.diagnostic.config({
                virtual_text = {
                    --prefix = '●',
                    prefix = '',
                },
                signs = true,
                underline = true,
                update_in_insert = true,
            })
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
