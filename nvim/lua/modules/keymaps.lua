-- " Section: keymaps
-- " Better split movement
-- remaps !!
vim.keymap.set('n', '<C-J>', '<C-W><C-J>')
vim.keymap.set('n', '<C-K>', '<C-W><C-K>')
vim.keymap.set('n', '<C-H>', '<C-W><C-H>')
vim.keymap.set('n', '<C-L>', '<C-W><C-L>')

-- " Better line movement
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- " No arrow keys
vim.keymap.set('n', '<up>', '<nop>')
vim.keymap.set('n', '<down>', '<nop>')
vim.keymap.set('n', '<left>', '<nop>')
vim.keymap.set('n', '<right>', '<nop>')

-- " Set leader to space
-- let mapleader="\<Space>"
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = " "

-- " Close buffer
vim.keymap.set('n', '<Leader>q', '<cmd>bp|bd #<CR>')
-- " Close window
vim.keymap.set('n', '<Leader>x', '<cmd>close<CR>')
-- " confirm quit all
-- nnoremap <C-q>q :confirm qall

-- " Set buffer movement to ,o ,p
vim.keymap.set('n', '<Leader>p', '<cmd>bn<CR>')
vim.keymap.set('n', '<Leader>o', '<cmd>bp<CR>')

-- " Clear search highligh on esc
vim.keymap.set('n', '<Leader>/', '<cmd>nohlsearch<CR>')

-- " Ctrl - g for escape
vim.keymap.set('n', '<C-g>', '<esc>')
