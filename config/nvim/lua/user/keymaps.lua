local keymap = vim.keymap

keymap.set('n', '<leader>pv', vim.cmd.Ex)
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')
keymap.set('n', 'n', 'nzz')
keymap.set('n', 'N', 'Nzz')
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
