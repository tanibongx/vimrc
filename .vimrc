" PluginSetup ---------------------------{{{
set rtp+=$HOME/.local/lib/python3.5/site-packages/powerline/bindings/vim/   
set laststatus=2                                                            
set t_Co=256

set nocompatible        " be iMproved, required                           
filetype off            " required

" set the runtime path to include Vundle and initialize                         
set rtp+=~/.vim/bundle/Vundle.vim                                               
call vundle#begin()  

" let Vundle manage Vundle, required                                            
Plugin 'VundleVim/Vundle.vim'    

Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'  
Plugin 'scrooloose/nerdtree' 
Plugin 'easymotion/vim-easymotion'  
Plugin 'Valloric/YouCompleteMe'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}                                      
Plugin 'jiangmiao/auto-pairs'
Plugin 'freeo/vim-kalisi'     
Plugin 'w0ng/vim-hybrid'




"nerdcommenter
Plugin 'scrooloose/nerdcommenter'

call vundle#end()            " required                                         
filetype plugin indent on    " required   
syntax on
"}}}

" AutocompleteSettings ----------------{{{
set completeopt-=preview
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
"}}}

" Theme -------------------{{{
set t_Co=256                                                               
set background=dark
colorscheme hybrid                                                         
"set term=screen-256color " fix background color erase 
"}}}

" BasicSettings -----------------------{{{
" copy clipboard
set clipboard=unnamed

" auto reload
set autoread

"backspace
set backspace=indent,eol,start

" numberline
set nu
highlight LineNr ctermfg=grey

" TabDistance---------------------{{{
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
"}}}

"}}}

" StatusLine ----------------------------------{{{
set statusline=%f%m\ -\ FileType:\ %y%=[%v][%l/%L]
"}}}

" Mapping ---------------{{{

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" jk map to ESC 
inoremap jk <esc>

" Map NERDTree to Ctrl+z
map <C-z> :NERDTreeToggle<CR>

"scroll off
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>
" AutoQuote ---------------{{{
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>`>ll
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>`>ll
"}}}

" OperationPending map------------{{{
" }}}

" }}} 

" Autocmd ---------------{{{

" Auto Indent ------------------{{{
augroup autoIndent
    autocmd!
    autocmd BufWritePre,BufRead *.html :normal gg=G``
    autocmd BufWritePre,BufRead *.js :normal gg=G``
    autocmd BufWritePre,BufRead *.c :normal gg=G``
augroup END    
"}}}

" HTMLTemplate ----------------{{{
augroup htmlTemplate
    autocmd!
"    autocmd BufNewFile *.html :normal :startinsert
augroup END
" }}}

" NERDTree startup ---------------{{{
augroup NERDTreestartup
    autocmd!
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
augroup END    
" }}}

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" }}}
