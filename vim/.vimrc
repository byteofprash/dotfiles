" Vundle configuration
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" 
"
"
" My bundles
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'sickill/vim-monokai'

Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Git plugin not hosted on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
   "filetype plugin on
   "
   " Brief help
   " :PluginList       - lists configured plugins
   " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
   " :PluginSearch foo - searches for foo; append `!` to refresh local cache
   " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
   "
   " see :h vundle for more details or wiki for FAQ
   " Put your non-Plugin stuff after this line
"End Vuundle


set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
 
"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
 
"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set foldmethod=syntax  
set t_Co=256
set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
colorscheme monokai


 "disable vi compatibility (emulation of old bugs)
 set nocompatible
 " use indentation of previous line
 set autoindent
 " use intelligent indentation for C
 set smartindent
 " configure tabwidth and insert spaces instead of tabs
 set tabstop=4 " tab width is 4 spaces
 set shiftwidth=4 " indent also with 4 spaces
 set expandtab " expand tabs to spaces
 " wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
 set textwidth=120
 " turn syntax highlighting on
 syntax on
 " turn line numbers on
 set number
 " highlight matching braces
 set showmatch
 " intelligent comments
 set comments=sl:/*,mb:\ *,elx:\ */
  
  " Install OmniCppComplete like described on
 "  http://vim.wikia.com/wiki/C++_code_completion
  " This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
  " Load standard tag files
  set tags+=~/.vim/tags/cpp
  set tags+=~/.vim/tags/gl
  set tags+=~/.vim/tags/sdl
  set tags+=~/.vim/tags/qt4
  set tags=tags;/
   
   " Install DoxygenToolkit from
"   http://www.vim.org/scripts/script.php?script_id=987
"   let g:DoxygenToolkit_authorName="John Doe <john@doe.com>"
    
    " Enhanced keyboard mappings
    "
    " in normal mode F2 will save the file
"    nmap <F2> :w<CR>
    " in insert mode F2 will exit insert, save, enters insert again
"    imap <F2> <ESC>:w<CR>i
    " switch between header/source with F4
    map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
    " recreate tags file with F5
    map <F5> :!ctags -R –c++-kinds=+p –fields=+iaS –extra=+q .<CR>
    " create doxygen comment
    map <F6> :Dox<CR>
    " build using makeprg with <F7>
    map <F7> :make<CR>
    " build using makeprg with <S-F7>
    map <S-F7> :make clean all<CR>
    " goto definition with F12
    map <F12> <C-]>
    " in diff mode we use the spell check keys for merging
"    if &diff
"    ” diff settings
"    map <M-Down> ]c
"    map <M-Up> [c
"    map <M-Left> do
"    map <M-Right> dp
"    map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
"    else
    " spell settings
"    :setlocal spell spelllang=en
    " set the spellfile - folders must exist
"    set spellfile=~/.vim/spellfile.add
"    map <M-Down> ]s
"    map <M-Up> [s
map <F2> @:
"    endif 

set foldlevelstart=1