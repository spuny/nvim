local api = vim.api
local function printWindowSize()
  print(api.nvim_win_get_width(0), api.nvim_win_get_height(0))

end

return {
  printWindowSize = printWindowSize
}
