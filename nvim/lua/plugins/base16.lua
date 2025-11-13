return {
  'RRethy/base16-nvim',
  config = function()
    vim.cmd('colorscheme base16-black-metal-mayhem')

    -- Make spell check highlighting more visible
    vim.api.nvim_set_hl(0, 'SpellBad', {
      undercurl = true,
      sp = '#ff0000',  -- bright red underline
      bg = '#3a0000'   -- subtle red background
    })
    vim.api.nvim_set_hl(0, 'SpellCap', {
      undercurl = true,
      sp = '#ffff00'   -- yellow underline for capitalization
    })
    vim.api.nvim_set_hl(0, 'SpellRare', {
      undercurl = true,
      sp = '#ff00ff'   -- magenta underline for rare words
    })
    vim.api.nvim_set_hl(0, 'SpellLocal', {
      undercurl = true,
      sp = '#00ffff'   -- cyan underline for locale issues
    })
  end,
}
