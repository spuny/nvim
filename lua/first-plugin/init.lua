local api = vim.api
local function createFloatingWindow()
  local stats = api.nvim_list_uis()[1]
  local width = stats.width;
  local height = stats.height;

  local bufh = api.nvim_create_buf(false, true)
  local winId = api.nvim_open_win(bufh, true, {
   relative="editor",
   width = width - 4,
   height = height -4,
   col = 2,
   row = 2,
  })

end

local function onResize()
  local stats = api.nvim_list_uis()[1]
  local width = stats.width;
  local height = stats.height;

  print("Window size", width, height)
end

return {
  createFloatingWindow = createFloatingWindow,
  onResize = onResize
}
