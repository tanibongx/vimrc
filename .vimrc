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


Plugin 'leafgarland/typescript-vim'

Plugin 'Quramy/tsuquyomi'

"nerdcommenter
Plugin 'scrooloose/nerdcommenter'

"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'

call vundle#end()            " required                                         
filetype plugin indent on    " required   

map <C-z> :NERDTreeToggle<CR>


let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

" tab distance
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" preview autocomplete
set completeopt-=preview

" numberline
set nu

" theme
set t_Co=256                                                               
set background=dark
colorscheme hybrid                                                         
set term=screen-256color " fix background color erase 

" copy clipboard
set clipboard=unnamed

" auto reload
set autoread

syntax on

" map 
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>`>ll
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>`>ll

inoremap jk <esc>
inoremap <esc> <nop>

augroup autoIndent
    autocmd!
    autocmd BufWritePre *.html :normal gg=G
    autocmd BufWritePre,BufRead *.js :normal gg=G
    autocmd BufWritePre,BufRead *.c :normal gg=G
augroup END    

augroup htmlTemplate
    autocmd!
"    autocmd BufNewFile *.html :normal :startinsert
augroup END

execute pathogen#infect()
call pathogen#helptags()
