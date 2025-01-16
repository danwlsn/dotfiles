return {
  'nvim-lualine/lualine.nvim',
  opts = {
    icons_enabled = false,
    theme = 'jellybeans',
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch'},
      lualine_c = {'filename'},
      lualine_x = {'diagnostics'},
      lualine_y = {'diff'},
      lualine_z = {'location'}
    },
  }
}
