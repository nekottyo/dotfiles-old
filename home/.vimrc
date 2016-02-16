source ~/.vimrc.color
source ~/.vimrc.basic
source ~/.vimrc.editing
source ~/.vimrc.python
let PATH = expand("~/.pyenv/shims") . ":" . $PATH
" Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

"let $PATH = "~/.pyenv/shims:".$PATH
 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
call neobundle#begin(expand('~/.vim/bundle/'))
" IncludePath(expand("~/.pyenv/shims"))
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'alpaca-tc/alpaca_powertabline'
" NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
" NeoBundle 'Lokaltog/powerline-fontpatcher'
NeoBundle 'sjl/badwolf'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'ervandew/supertab'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'stephenmckinney/vim-solarized-powerline'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'scrooloose/syntastic'


NeoBundleLazy "lambdalisue/vim-django-support", {
      \ "autoload": {
      \   "filetypes": ["python", "python3", "djangohtml"]
      \ }}

" $BJd40MQ$K(B jedi-vim $B$rDI2C(B
NeoBundle "davidhalter/jedi-vim"

" pyenv $B=hM}MQ$K(B vim-pyenv $B$rDI2C(B
" Note: depends $B$,;XDj$5$l$F$$$k$?$a(B jedi-vim $B$h$j8e$K%m!<%I$5$l$k!J$3$H$r4|BT!K(B
NeoBundleLazy "lambdalisue/vim-pyenv", {
      \ "depends": ['davidhalter/jedi-vim'],
      \ "autoload": {
      \   "filetypes": ["python", "python3", "djangohtml"]
      \ }}

" ... neobundle.vim $B=*N;=hM}Ey(B

" syntax + $B<+F0(Bcompile
NeoBundle 'kchmck/vim-coffee-script'
" js BDD$B%D!<%k(B
NeoBundle 'claco/jasmine.vim'
" if_lua$B$,M-8z$J$i(Bneocomplete$B$r;H$&(B
NeoBundle 'Shougo/neocomplete'

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

" $B%$%s%G%s%H$K?'$rIU$1$F8+$d$9$/$9$k(B
NeoBundle 'nathanaelkane/vim-indent-guides'

" vim$B$rN)$A>e$2$?$H$-$K!"<+F0E*$K(Bvim-indent-guides$B$r%*%s$K$9$k(B
let g:indent_guides_enable_on_vim_startup = 1

call neobundle#end()
au BufRead,BufNewFile,BufReadPre *.coffee    set filetype=coffee
autocmd FileType coffee    setlocal sw=2 sts=2 ts=2 et
"au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!
nnoremap <silent> <C-C> :CoffeeCompile vert <CR><C-w>h
syntax on 

