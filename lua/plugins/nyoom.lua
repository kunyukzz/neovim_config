return {
  "nyoom-engineering/oxocarbon.nvim",
    config = function() 
    vim.opt.background = "dark" -- set this to dark or light
    vim.cmd("colorscheme oxocarbon")
    vim.api.nvim_set_hl(0, 'Comment', { fg = '#606060' })
    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#A0A0A0' })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#A0A0A0' })
    --vim.api.nvim_set_hl(0, 'CursorLine', { fg = '#2E2E2E' })
    vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#505050' })
    
    vim.api.nvim_set_hl(0, 'DapBreakpoint', { fg = '#FF0303' })
    vim.api.nvim_set_hl(0, 'DapBreakpointCondition', { fg = '#A0A0A0', bold = true })
    vim.api.nvim_set_hl(0, 'DapBreakpointRejected', { fg = '#A0A0A0' })
    vim.api.nvim_set_hl(0, 'DapLogPoint', { fg = '#A0A0A0' })
    vim.api.nvim_set_hl(0, 'DapStopped', { fg = '#FF8000' })

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
