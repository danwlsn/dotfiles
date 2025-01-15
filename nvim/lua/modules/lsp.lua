require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = { 'markdown' },
  }
}
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require'lspconfig'.pyright.setup{
  capabilities = capabilities
}
