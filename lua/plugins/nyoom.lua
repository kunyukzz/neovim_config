return {
  "nyoom-engineering/oxocarbon.nvim",
    config = function() 
    vim.opt.background = "dark" -- set this to dark or light
    vim.cmd("colorscheme oxocarbon")
    vim.api.nvim_set_hl(0, 'Comment', { fg = '#A0A0A0' })
    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#A0A0A0' })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#A0A0A0' })
    --vim.api.nvim_set_hl(0, 'CursorLine', { fg = '#2E2E2E' })
    vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#362e20' })
    
    vim.api.nvim_set_hl(0, 'DapBreakpoint', { fg = '#FF0303' })
    vim.api.nvim_set_hl(0, 'DapBreakpointCondition', { fg = '#A0A0A0', bold = true })
    vim.api.nvim_set_hl(0, 'DapBreakpointRejected', { fg = '#A0A0A0' })
    vim.api.nvim_set_hl(0, 'DapLogPoint', { fg = '#A0A0A0' })
    vim.api.nvim_set_hl(0, 'DapStopped', { fg = '#FF8000' })

    --vim.g.terminal_color_0 = '#000000' -- Black
    vim.g.terminal_color_1 = '#FF0000' -- Red
    vim.g.terminal_color_2 = '#00FF00' -- Green
    vim.g.terminal_color_3 = '#FFFF00' -- Yellow
    vim.g.terminal_color_4 = '#0000FF' -- Blue
    vim.g.terminal_color_5 = '#FF00FF' -- Magenta
    vim.g.terminal_color_6 = '#00FFFF' -- Cyan
    vim.g.terminal_color_7 = '#FFFFFF' -- White
    --vim.g.terminal_color_8 = '#808080' -- Bright Black
    vim.g.terminal_color_9 = '#FF3030' -- Bright Red
    vim.g.terminal_color_10 = '#30FF30' -- Bright Green
    vim.g.terminal_color_11 = '#FFFF60' -- Bright Yellow
    vim.g.terminal_color_12 = '#6060FF' -- Bright Blue
    vim.g.terminal_color_13 = '#FF60FF' -- Bright Magenta
    vim.g.terminal_color_14 = '#60FFFF' -- Bright Cyan
    vim.g.terminal_color_15 = '#FFFFFF' -- Bright White

    vim.fn.sign_define('DapBreakpoint',
            {
                --linehl = 'DapBreakpoint',
                numhl = 'DapBreakpoint',
                text = '',
                texthl = 'DapBreakpoint'
            }
        )

    vim.fn.sign_define('DapStopped',
            {
                linehl = 'DapStopped',
                numhl = 'DapStopped',
                text = '',
                texthl = 'DapStopped'
            }
        )


    end
}
