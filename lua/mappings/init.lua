local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<leader>w', ':w<CR>', opts)
map('n', '<leader>q', ':q<CR>', opts)

map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- Barbar mapping
map('n', '<TAB>', ':BufferNext<CR>', opts)
map('n', '<leader>c', ':BufferClose<CR>', opts)
map('n', '<C-p>', ':BufferPick<CR>', opts)

-- Telescope mapping
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)

-- Formatting Null-ls
map('n', '<leader>f', ':lua vim.lsp.buf.format()<CR>', opts)
