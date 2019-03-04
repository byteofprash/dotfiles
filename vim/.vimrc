""" -------------- File search----------

" Adding this will help me find all files inall subdirs
set path+=**

" Menu when more than 1 item matches
set wildmenu
set nocompatible
filetype plugin on
syntax on

"-----------------------------------

""" My nnoremaps-----------
" I can move to normal mode with ctrl+space
nnoremap <C-@> i
" inoremap <C-@> <Esc> " not really if I wanna do this. I'm not really using
" Inserting a new line with o without entering input mode
nnoremap o o<Esc>
nnoremap O O<Esc>
nnoremap <space> za
" opens and closses the Tagbar window. 
" make sure to install CTAGS
nmap <F8> :TagbarToggle<CR> 
"" --------------Display Characteristics----
" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

"Show the status line
set laststatus=2

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

"Draw a line for specific column width
set colorcolumn=120

" turn hybrid line numbers on
set number relativenumber
set nu rnu
"-----------------------------------------

" Incremental search.
set incsearch 

" When searching try to be smart about cases
set smartcase

" enable syntax highlighting
syntax enable

" Highlight search results
set hlsearch

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

setlocal foldmethod=indent
" PYTHON comaptible commenting for vim-commentary plugin
autocmd FileType python setlocal commentstring=#\ %s
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

" ---------------------- VIEWS-----------------------

set viewoptions=cursor,folds,slash,unix
" TO delete the views, use :CleanViewdir . flushes all the fucked up views.
"---------------------------------------------------

" ---------------------- PLUGINS---------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Yggdroot/indentLine' " This is the line that shows for every indent in python. 
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround' " Plugin used to surround a particular text with a char(:,[,],),..)
Plugin 'kopischke/vim-stay' " Plugin to remember the fucking folds and not mess up!
Plugin 'Konfekt/FastFold' "Plugin to take care of the fucked up folds in Vim!
Plugin 'tpope/vim-commentary' "Awesomatic plugin to comment lines. use gcc 
Plugin 'vimwiki/vimwiki' " Vimwiki
Plugin 'majutsushi/tagbar' " Tagbar is a plugin that shows the tags in a separate bad in the right side. 
Plugin 'w0rp/ale' " ze amazing tool for static lint checking. 
Plugin 'itchyny/lightline.vim'
Plugin 'davidhalter/jedi-vim' " Biting dust and installing this. check again on 31-Mar-2019
Plugin 'scrooloose/nerdtree' "Biting dust and installing this. check again on 31-Mar-2019
"
"-- Colorscheme plugins
Plugin 'haishanh/night-owl.vim' " Nightowl colour scheme
Plugin 'morhetz/gruvbox' " Gruvbox colour scheme
call vundle#end() 
"------------------------------------

"------------Ale Settings-----
":ALEFix fixes the lints
" flake8 and autopep8 : Please install these 2 with pip3
let g:ale_lint_on_text_changed = 'never'
let b:ale_fixers = ['autopep8']
let g:ale_python_flake8_options = '--ignore=E501' "Nobody wants 80 chars limit
nmap <silent> e :ALENext<cr>
nmap <silent> E :ALEPrevious<cr>
"-----------------------------------

"------------NERDTree Settings-----
map <F2> :NERDTreeToggle<CR>
"--------------Colourscheme---------
set background=dark " Setting the dark theme of gruvbox
colorscheme gruvbox
"------------------------------------


" Making my own Vimrc Folds. Anything that has more than two double quote is a section
"" vim:fdm=expr:fdl=0
"" vim:fde=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='

"-------------VimWiki Config--------

let g:vimwiki_list = [{'path':'~/wiki/','path_html':'~/wiki/wiki_html/','template_path':'~/wiki/wiki_html/template','template_default':'default','template_ext':'.htm'}]
"-----------------------------------
