vim.g.mapleader = " "
vim.opt.mouse = 'a'
vim.g.have_nerd_font = true

vim.schedule(function()
    vim.opt.clipboard = 'unnamedplus'
end)

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
-- vim.api.nvim_set_hl(0, 'LineNr', { fg = '#ff0000' }) -- Line number color
-- vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#00ff00' }) -- Current line number color
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.wrap = true
vim.opt.signcolumn = 'yes:2'

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<C-z>', '<Nop>')

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
