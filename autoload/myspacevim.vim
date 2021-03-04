function! myspacevim#before() abort
endfunction

function! myspacevim#after() abort
  set cc=80
  set laststatus=2
  set wildignore=*.o,*~,*.pyc
  set ignorecase
  set hlsearch
  set incsearch
  set showmatch
  highlight ColorColumn ctermbg=Blue guibg=Blue
  set colorcolumn=80
  autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')
  autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
  highlight ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+$/
  autocmd ColorScheme * highlight ThreeUnderscores ctermbg=red guibg=red
  highlight ThreeUnderscores ctermbg=red guibg=red
  match ThreeUnderscores /___/
endfunction
