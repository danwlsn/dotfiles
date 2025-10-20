require("config.lazy")


-- Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 25
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.signcolumn = "yes:1"

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Keymaps
-- " Better split movement
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
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = " "

-- " save buffer
vim.keymap.set('n', '<Leader>s', '<cmd>w<CR>')
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

-- " Leader fx for floating diagnostic
vim.keymap.set('n', '<Leader>fx', vim.diagnostic.open_float)
