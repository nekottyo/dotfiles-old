if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  " goのタブ幅4
  au BufNewFile,BufRead *.go    setlocal tabstop=4 shiftwidth=4
  " python も 4
  au BufNewFile,BufRead *.py    setlocal tabstop=4 shiftwidth=4
  let g:indent_guides_guide_size = 4
augroup END
