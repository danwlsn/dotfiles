return {
  'jakewvincent/mkdnflow.nvim',
  opts = {
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
  }
}
