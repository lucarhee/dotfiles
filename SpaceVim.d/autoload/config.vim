func! config#before() abort
  let g:mapleader  = ','
  " after this line, when you using <leader> to defind key bindings
  " the leader is ,
  " for example:
  
  vnoremap . :normal .<CR>

  set background=dark         " Assume a dark background
  " Allow to trigger background
  function! ToggleBG()
      let s:tbg = &background
      " Inversion
      if s:tbg == "dark"
          set background=light
      else
          set background=dark
      endif
  endfunction
  noremap <leader>bg :call ToggleBG()<CR>

  nnoremap <leader>w :w<cr>
  " this mapping means using `,w` to save current file.
endf
