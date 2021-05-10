fun! FirstPlugin()
  " do not forget to remove this line !!!
  lua for k in pairs(package.loaded) do if k:match("^first%-plugin") then package.loaded[k] = nil end end
  lua require("first-plugin").printWindowSize()
endfun

augroup FirstPlugin
  autocmd!
augroup END
