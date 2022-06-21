vim.cmd([[

let g:gitgutter_map_keys = 0

set foldtext=gitgutter#fold#foldtext()

function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}
set signcolumn=yes

let g:gitgutter_set_sign_backgrounds = 1
let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_linenrs = 1

]])
