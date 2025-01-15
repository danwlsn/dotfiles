require("twilight").setup({
  context = 1, -- amount of lines we will try to show around the current line
})
require("zen-mode").setup({
  window = {
    width = 100,
    options = {
      number = false,
      relativenumber = false,
      signcolumn = "no"
    }
  }
})
require('mkdnflow').setup({
  modules = {
    buffers = true,
    conceal = true,
    cursor = true,
    folds = true,
    foldtext = true,
    links = true,
    lists = true,
    maps = true,
    paths = true,
    yaml = false,
    cmp = false
  },
  links = {
    style = 'wiki',
    name_is_source = true
  },
  perspective = {
    priority = 'current',
  }
})

-- Find file in notes
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>n', function() builtin.find_files({ cwd = "~/_/txt" }) end)
