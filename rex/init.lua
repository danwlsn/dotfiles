-- Rex configuration
-- https://rex.sh/docs/config

require("projects").setup{
  key       = "alt+cmd+n",        -- false to bind nothing
  worktrees = "~/.rex/worktrees", -- where new worktrees are made
  roots     = { "~/_" },          -- folders whose repositories are
}
