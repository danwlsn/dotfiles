return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    defaults = {
      disable_devicons = true,
    }
  },
  keys = {
    { '<leader>.', function() require('telescope.builtin').find_files() end,  desc = 'Telescope find files' },
    { '<leader>b', function() require('telescope.builtin').buffers() end, desc = 'Telescope buffers' },
    { '<leader>fg', function() require('telescope.builtin').live_grep() end, desc = 'Telescope live grep' },
    { '<leader>fh', function() require('telescope.builtin').help_tags() end, desc = 'Telescope help tags' },
    { '<leader>fq', function() require('telescope.builtin').quickfix() end, desc = 'Telescope quickfix' },
    { '<leader>fr', function() require('telescope.builtin').lsp_references() end, desc = 'Telescope LSP Reference' },
    { '<leader>fd', function() require('telescope.builtin').lsp_definitions() end, desc = 'Telescope LSP Definition' },
    { '<leader>fs', function() require('telescope.builtin').lsp_document_symbols() end, desc = 'Telescope LSP Documetn Symbols' },
  }
}
