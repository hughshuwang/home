:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

set nocompatible
set runtimepath+=~/.vim_runtime
set encoding=utf-8
filetype off

syntax enable
set number relativenumber
set nonumber norelativenumber " turn hybrid line numbers off
set number! relativenumber!   " toggle hybrid line numbers

set ts=4
set expandtab
set autoindent
set modifiable

set foldmethod=indent
set foldlevel=99
set cursorline
set showmatch

" split bar char fill
set fillchars+=vert:\ 

" leader key remap
let mapleader = "\<space>"

" share clipboard with macOS
" used for paste to terminal for REPL
set clipboard=unnamed

" NERDTree setups
nmap nt :NERDTreeToggle<CR>
let NERDTreeWinSize=30
let NERDTreeShowHidden=1

" Tlist setups
nmap tl :TlistToggle<CR>
let Tlist_WinWidth=30
let Tlist_Use_Right_Window=1
let Tlist_Auto_Update=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1

" WinManager setups
nmap wm :WMToggle<CR>
let g:winManagerWidth=30

" http://wuyudong.com/2015/12/29/1635.html
" additional actions required in ~/.vim/plugin/winmanager.vim
" add <exe 'q'> after <call s:StartWindowsManager()> 
"   in func ToggleWindowsManager 
let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|TagList"
function! NERDTree_Start()
    exec 'NERDTree'
endfunction
function! NERDTree_IsValid()
    return 1
endfunction
nmap wm :WMToggle<CR>

" quitting
nnoremap <leader>q :q<CR>

" Remap Escape to quit terminal normal
" https://github.com/vim/vim/issues/2216
tnoremap <Esc> <C-\><C-N> 
nnoremap <leader>t :terminal<CR>
nnoremap <leader>v :vertical terminal<CR>

" buffertabs, deprecated, installed with airline
" nnoremap <leader>n :bnext<CR>

" Elegant splitting
nnoremap <leader><Tab> <C-W><C-W>
nnoremap <leader>j <C-W><C-j>
nnoremap <leader>k <C-W><C-k>
nnoremap <leader>l <C-W><C-l>
nnoremap <leader>h <C-W><C-h>
nnoremap <leader>J <C-W>J
nnoremap <leader>K <C-W>K
nnoremap <leader>L <C-W>L
nnoremap <leader>H <C-W>H

" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

nnoremap <leader>s :split<CR>
nnoremap <leader>p :vsplit<CR>

nmap <leader>= :vertical resize +5<CR>
nmap <leader>- :vertical resize -5<CR>
nmap <leader>, :res -5<CR>
nmap <leader>. :res +5<CR>
filetype on " ON for TagList


inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>" 

try
source ~/.vim_runtime/my_configs.vim
catch
endtry


" VUNDLE PLUGIN SECTION "
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" python repl support " NOT WORKING
" Plugin 'rhysd/reply.vim'

" jupyter support " NOT WORKING
" Plugin 'jupyter-vim/jupyter-vim'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" taglist on GitHub
Plugin 'yegappan/taglist', {'rtp': 'vim/'}

" one half colorscheme
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
colorscheme onehalfdark
highlight Normal cterm=NONE ctermbg=234
highlight CursorLine cterm=NONE ctermbg=235
highlight LineNr cterm=NONE ctermbg=234
highlight VertSplit cterm=NONE ctermbg=234

" aux bar airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" let g:airline_theme='onehalfdark' " third-party scheme
let g:airline_theme='angr' " official airline scheme
" alternatives: 'deus', 'angr', 'atomic'

" Plugin 'sillybun/vim-repl' " not usable, 051320

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" NERDTree
Plugin 'preservim/nerdtree'
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

" Pandoc Family
" Plugin 'vim-pandoc/vim-pandoc'
" Plugin 'vim-pandoc/vim-pandoc-syntax'
" let g:pandoc#modules#disabled = ["spell"]

let python_highlight_all=1

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
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
