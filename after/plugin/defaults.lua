vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.title = true
vim.opt.titleold = 'st'
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 99

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

vim.keymap.set('n', '<leader>gg', ':aboveleft Git<CR>')
vim.keymap.set('n', '<leader>ga', ':Git add %<CR>')
vim.keymap.set('n', '<leader>gd', ':Git diff %<CR>')
-- vim.keymap.set('n', '<leader>gc', ':Git checkout %<CR>')
-- vim.keymap.set('n', '<leader>gh', ':Gitsigns preview_hunk_inline<CR>')
--
vim.keymap.set('n', '<leader>pv', ':Neotree toggle<CR>')
vim.keymap.set('n', '<leader>pf', ':Neotree reveal<CR>')

-- vim.keymap.set('n', '<C-p>', ':GFiles --cached --others --exclude-standard<CR>')
-- vim.keymap.set('n', '<C-b>', ':Buffers<CR>')

vim.api.nvim_create_user_command('Q', 'q', {})
vim.api.nvim_create_user_command('W', 'w', {})

vim.api.nvim_create_autocmd('BufEnter', {
  callback = function()
    vim.opt.formatoptions:remove 'o'
  end,
  pattern = '*',
})
