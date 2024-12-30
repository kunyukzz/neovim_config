return {
    {
        "jay-babu/mason-nvim-dap.nvim",
        --event = "VeryLazy",
        dependencies = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap",
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio"
        },
        opts = {
            handlers = {},
            config = function()
                local dap = require("dap")
                local dapui = require("dapui")

                require("dapui").setup()
                dap.setup()
                dapui.setup()

            --     dap.listeners.before.attach.dapui_config = function()
            --         dapui.open()
            --     end
            --     dap.listeners.before.launch.dapui_config = function()
            --         dapui.open()
            --     end
            --     dap.listeners.before.event_terminated.dapui_config = function()
            --         dapui.close()
            --     end
            --     dap.listeners.before.event_exited.dapui_config = function()
            --         dapui.close()
            --     end
            end,
        }
    },
    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require('dap')
            dap.adapters.cppdbg = {
                id = 'cppdbg',
                type = 'executable',
                command = '/home/kunyukz/.local/share/nvim/mason/bin/OpenDebugAD7',
            }

            --require('dap').set_log_level('TRACE')
            --local dap = require("dap")
            dap.configurations.cpp = {
                {
                    name = "Launch",
                    type = "cppdbg",
                    request = "launch",
                    program = function()
                        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                    end,
                    cwd = '${workspaceFolder}',
                    stopAtBeginningOfMainSubprogram = false,
                    setupCommands = {
                        {
                            text = '-enable-pretty-printing',
                            description =  'enable pretty printing',
                            ignoreFailures = false,
                            text = "echo $LD_LIBRARY_PATH",
                        },
                    },
                    environment = {
                        {name = "LD_LIBRARY_PATH", value = '${workspaceFolder}/bin:${VULKAN_SDK}/lib'}
                    }
                },
                {
                },
            }
            vim.keymap.set('n', '<Leader>dt', dap.toggle_breakpoint, {})
            vim.keymap.set('n', '<Leader>dc', dap.continue, {})
            vim.keymap.set('n', '<F9>', dap.close, {})

            vim.keymap.set('n', '<F5>', dap.continue, {})
            vim.keymap.set('n', '<F6>>', dap.step_over, {})
            vim.keymap.set('n', '<F7>', dap.step_into, {})
            vim.keymap.set('n', '<F8>', dap.step_out, {})
        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        config = function()
            require('dapui').setup()
            local dap, dapui = require('dap'), require('dapui')
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
        end,
    },
    {
        "theHamsta/nvim-dap-virtual-text",
        config = function()
            require('nvim-dap-virtual-text').setup()
        end,
    },
}

