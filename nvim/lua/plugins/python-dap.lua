return {
  "mfussenegger/nvim-dap-python",
  lazy = true,
  config = function()
    require("dap-python").setup("uv")
  end,
  -- Consider the mappings at
  -- https://github.com/mfussenegger/nvim-dap-python?tab=readme-ov-file#mappings
  dependencies = {
    "mfussenegger/nvim-dap",
  },
}
