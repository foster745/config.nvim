--  See `:help vim.keymap.set()`
local map = vim.keymap.set

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- easy escape
map('i', 'jk', '<Esc>', { desc = 'Exit insert mode on jk' })

-- tab navigation
map('n', '<Tab>', 'gt', { desc = 'Navigate to tab right' })
map('n', '<S-Tab>', 'gT', { desc = 'Navigate to tab left' })
map('n', '<leader>x', '<Cmd>tabc<CR>', { desc = 'Close current tab' })

-- NeoTree
map('n', '<C-n>', '<Cmd>Neotree toggle<CR>', { desc = 'Neotree toggle' })

-- Split sizing
map('n', '<C-F>', '<C-w>|', { desc = 'Focus veritcal split' })
map('n', '<C-L>', '<C-w>>', { desc = 'Increase veritcal split width' })
map('n', '<C-H>', '<C-w><', { desc = 'Decrease veritcal split width' })
map('n', '<C-J>', '<C-w>=', { desc = 'Equalize veritcal split width' })
