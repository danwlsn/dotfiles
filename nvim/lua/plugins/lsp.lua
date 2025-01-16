return {
  'neovim/nvim-lspconfig', tag = 'v1.3.0',
  config = function()
    require'lspconfig'.pyright.setup{
      capabilities = capabilities
    }
  end,
}
