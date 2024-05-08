lua require("radmil")
hi Normal ctermbg=NONE guibg=NONE

set foldmethod=indent   " fold based on indent
autocmd FileType vim setlocal foldmethod=marker
autocmd FileType text setlocal foldmethod=manual

function! JSFolds()
  let thisline = getline(v:lnum)
  if thisline =~? '\v^\s*$'
    return '-1'
  endif

  if thisline =~ '^import.*$'
    return 1
  else
    return indent(v:lnum) / &shiftwidth
  endif
endfunction

autocmd FileType javascript setlocal foldmethod=expr
autocmd FileType javascript setlocal foldexpr=JSFolds()

inoremap {<cr> {<cr>}<c-o>O

inoremap [<cr> [<cr>]<c-o>O

inoremap <C-A-j>h #[derive()]<esc>ba

inoremap <C-A-j>j fn name() {<cr><cr>}<esc>4bh cw
inoremap <C-A-j>k struct name {<cr><cr>}<esc>3bh cw
inoremap <C-A-j>l impl name {<cr><cr>}<esc>3bh cw
