-- setup.lua: open a Rex session with claude, editor, and shell tabs.
--
-- Run from any project directory:
--   rex do ~/.config/rex/setup.lua
--
-- If a setup.rex file exists in the current directory, runs that instead,
-- giving the project full control over its own layout.

local function getenv(name)
  if os and os.getenv then
    local v = os.getenv(name)
    if v and v ~= "" then return v end
  end
  return nil
end

local cwd = getenv("PWD") or "."
local project_name = cwd:match("([^/]+)/?$") or "project"

-- Delegate to a project-specific setup when present.
local project_setup = cwd .. "/setup.rex"
if io and io.open then
  local f = io.open(project_setup, "r")
  if f then
    f:close()
    dofile(project_setup)
    return
  end
end

-- Default: claude tab, editor tab, shell tab.
local session, err = rex.call("session.create", {
  label = project_name,
  initial_windows = {
    {
      window_label = "claude",
      layout = rex.layout.block{
        flavor  = "com.superlogical.terminal.shell",
        options = { cwd = cwd },
      },
    },
    {
      window_label = "editor",
      layout = rex.layout.block{
        flavor  = "com.superlogical.terminal.shell",
        options = { cwd = cwd },
      },
    },
    {
      window_label = "shell",
      layout = rex.layout.block{
        flavor  = "com.superlogical.terminal.shell",
        options = { cwd = cwd },
      },
    },
  },
})
if session == nil then error(tostring(err), 0) end

-- Give shells a moment to initialise before sending commands.
rex.sleep(0.3)

local wins = session.initial_windows or {}

local function send(win_index, text)
  local win = wins[win_index]
  if win and win.block_ids and win.block_ids[1] then
    rex.call("block.method", {
      session_id = session.session_id,
      block_id   = win.block_ids[1],
      method     = "com.superlogical.terminal.write",
      args       = { data = text },
    })
  end
end

send(1, "claude --dangerously-skip-permissions\n")
send(2, "n .\n")
-- shell tab (3) starts empty

rex.client.queue("session.select", { session_id = session.session_id })
