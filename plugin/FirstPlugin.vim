fun! FirstPlugin()
  " do not forget to remove this line !!!
  " cause this is rereading this file in will apply changes if made any
  " lua for k in pairs(package.loaded) do if k:match("^first%-plugin") then package.loaded[k] = nil end end
  lua require("first-plugin").createFloatingWindow()
endfun

augroup FirstPlugin
  autocmd!
  autocmd VimResized * :lua require("first-plugin").onResize()
augroup END
