lua require("spuny4")

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
" nnoremap <C-f> :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>pf :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>vrc :lua require('spuny4.telescope').search_dotfiles()<CR>
" nnoremap <leader>va :lua require('spuny4.telescope').anime_selector()<CR>
" nnoremap <leader>vc :lua require('spuny4.telescope').chat_selector()<CR>
nnoremap <leader>gb :lua require('spuny4.telescope').git_branches()<CR>
nnoremap <leader>gw :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
" there was error in naming
nnoremap <leader>gm :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>
