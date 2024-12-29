return {
    {
        "mfussenegger/nvim-dap",
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",  -- Ensure this is included as a dependency
        },
        config = function()
            local dap = require('dap')
            local dapui = require('dapui')

            dapui.setup()
            dap.listeners.after.event_initialized['dapui_config'] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated['dapui_config'] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited['dapui_config'] = function()
                dapui.close()
            end

            -- Keybindings
            vim.keymap.set('n', '<F5>', dap.continue, {})
            vim.keymap.set('n', '<F6>', dap.step_over, {})
            vim.keymap.set('n', '<F7>>', dap.step_into, {})
            vim.keymap.set('n', '<F8>', dap.step_out, {})
        end,
    },
    {
        "theHamsta/nvim-dap-virtual-text",
        config = function()
            require('nvim-dap-virtual-text').setup()
        end,
    },
}
