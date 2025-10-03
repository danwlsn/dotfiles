return {
  'neovim/nvim-lspconfig', tag = 'v2.5.0',
  config = function()
    vim.lsp.enable('pyright')
    vim.lsp.enable('gopls')
  end,
}
