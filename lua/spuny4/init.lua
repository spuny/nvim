require("spuny4.compe")
require("spuny4.telescope")
-- require("spuny4.git-worktree")
require("spuny4.lsp-config")
require("spuny4.lualine")
require("spuny4.lsp.bash-ls")
require("spuny4.lsp.yaml-ls")
require("spuny4.lsp.lua-ls")
require("spuny4.lsp.python-ls")
require("spuny4.indent-blankline")
-- require("theprimeagen.harpoon")
-- require("spuny4.statusline")

P = function(v)
  print(vim.inspect(v))
  return v
end

if pcall(require, 'plenary') then
  RELOAD = require('plenary.reload').reload_module

  R = function(name)
    RELOAD(name)
    return require(name)
  end
end
