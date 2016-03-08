if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  " pythonのタブ幅は4で
  au BufNewFile,BufRead *.py    setlocal tabstop=4 shiftwidth=4
  " goのタブ幅4
  au BufNewFile,BufRead *.go    setlocal tabstop=4 shiftwidth=4
augroup END
