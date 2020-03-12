""" -------------- File search----------

" Adding this will help me find all files inall subdirs
set path+=**

" Menu when more than 1 item matches
set wildmenu
set nocompatible
filetype plugin on
syntax on
set noswapfile
"-----------------------------------

""" My nnoremaps-----------
let maplocalleader = "_"
" Inserting a new line with o without entering input mode
nnoremap o o<Esc>
nnoremap O O<Esc>
nnoremap <space> za
" Shows all the todos in the working directory
noremap <Leader>t :noautocmd vimgrep /TODO/j **/*.py<CR>:cw<CR> 
" Find and replace word under the cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
" opens and closses the Tagbar window
nmap <F8> :TagbarToggle<CR> 
" This runs the ALEFix and fixes the lints
nmap <F4> :ALEFix<CR> 
nmap <F5> :ALEToggle<CR> 
noremap <expr> <C-b> max([winheight(0) - 2, 1]) . "\<C-u>" . (line('.') < 1         + winheight(0) ? 'H' : 'L')
noremap <expr> <C-f> max([winheight(0) - 2, 1]) . "\<C-d>" . (line('.') > line('$') - winheight(0) ? 'L' : 'H')
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

"-----------------------COMMANDS--------------------
command! Q q
command! W w
"
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
Plugin 'tmhedberg/SimpylFold' " Plugin to take care of folding in python
Plugin 'tpope/vim-commentary' "Awesomatic plugin to comment lines. use gcc 
Plugin 'vimwiki/vimwiki' " Vimwiki
Plugin 'majutsushi/tagbar' " Tagbar is a plugin that shows the tags in a separate bad in the right side. 
Plugin 'w0rp/ale' " ze amazing tool for static lint checking. 
Plugin 'junegunn/fzf.vim'

Plugin 'davidhalter/jedi-vim' " Biting dust and installing this. check again on 31-Mar-2019
Plugin 'scrooloose/nerdtree' "Biting dust and installing this. check again on 31-Mar-2019
Plugin 'SirVer/ultisnips' " Ultisnips plugin
Plugin 'honza/vim-snippets' " Snippets are separated from the engine.
Plugin 'tpope/vim-fugitive'  "Biting dust and installing this. check again on 31-Mar-2019
Plugin 'lervag/vimtex'
Plugin 'freitass/todo.txt-vim'
"-- Colorscheme plugins
Plugin 'morhetz/gruvbox' " Gruvbox colour scheme
Plugin 'vim-airline/vim-airline' " Airline statusbar
Plugin 'vim-airline/vim-airline-themes'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mtth/cursorcross.vim'
Plugin 'blueyed/vim-diminactive'
Plugin 'kana/vim-textobj-user'
Plugin 'bps/vim-textobj-python'
Plugin 'mzlogin/vim-markdown-toc'  " Unfortunately the only FUCKING way to create a md TOC
call vundle#end() 
"------------------------------------

"------------UltiSnips Settings-----
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:ultisnips_python_style="sphinx"
"-----------------------------------
"
"------------Jedi Vim Settings-----
let g:jedi#show_call_signatures="0"
"-----------------------------------
"
"
"
"------------Ale Settings-----
":ALEFix fixes the lints
" flake8 and autopep8 : Please install these 2 with pip3
" let g:ale_lint_on_text_changed = 'never'
let g:ale_linters = {'python': ['flake8']}
let g:ale_fixers = {'python': ['autopep8', 'isort']}
let g:ale_python_flake8_options = '--ignore=E501' "Nobody wants 80 chars limit
nmap <silent> <leader>e :ALENext<cr>
nmap <silent> <leader>E :ALEPrevious<cr>
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
highlight link ALEWarningSign String
highlight link ALEErrorSign Title
"-----------------------------------

"------------NERDTree Settings-----
let g:tagbar_right = 1
" let g:tagbar_vertical = 35
let g:tagbar_autofocus = 1
let NERDTreeWinPos = 'left'
autocmd FocusGained * if &filetype !=# "tagbar" | set relativenumber | endif
" The genuis way of opening tagbar and nerdtree together!!!!
map <F2> :NERDTreeToggle <CR>
"--------------Colourscheme---------
set background=dark" Setting the dark theme of gruvbox
colorscheme gruvbox
if g:colors_name == "gruvbox"
 highlight Normal ctermbg=16 guibg=#000000
"List other overrides here
endif
highlight Folded ctermfg=lightblue
let g:gruvbox_contrast_dark = 'hard'
"------------------------------------


"-------------VimTex Config--------
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : 'build',
    \}
"---------------------------------

"------------Airline Config-------
" let g:airline_powerline_fonts = 1
let g:airline_theme='murmur'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
"--------------------------------

"-------------VimWiki Config--------
let g:vimwiki_list = [{'path':'~/wiki/','path_html':'~/wiki/wiki_html/','syntax': 'markdown', 'ext': '.md','template_path':'~/wiki/wiki_html/template','template_default':'default','template_ext':'.htm'}]
"-----------------------------------
"
"
"DOING THE UNTHINKABLE. DISABLING THE ARROW KEYS. LET'S SEE HOW LONG I LAST
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" TRYING TO FIND A NOVEL WAY TO USE REGISTERS AND SHUFFLE BETWEEN THEM
" nnoremap <Leader> :let @x=@" \| let @"=@a \| let @a=@b \| let @b=@x<CR>
vnoremap <Leader>y "+y
nnoremap <Leader>y "+y
nnoremap <Leader>p "+p

" This zooms in and zooms out the current split window 
noremap Zz <c-w>_ \| <c-w>\|
noremap Zo <c-w>=

"------------Indent Line settings------
let g:indentLine_setColors=0
let g:cursorcross_dynamic = 'clw'
map <F9> :IndentLinesToggle <CR>
"--------------------------------

"----------SimpylFold settings-----------------
let g:SimpylFold_docstring_preview = 0
"----------------------------------------------
"
"---------fzf settings------------------------
set rtp+=~/.fzf
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<cr>
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>

" function! s:find_git_root()
"   return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
" endfunction
" command! -bang -nargs=+ -complete=dir Rag call fzf#vim#ag_raw(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
" nnoremap <c-f> :Rag<cr>
"---------------------------------------------
