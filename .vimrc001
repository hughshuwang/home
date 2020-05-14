set nocompatible
set runtimepath+=~/.vim_runtime
set encoding=utf-8
set fillchars+=vert:\ 

set number relativenumber
set nonumber norelativenumber " turn hybrid line numbers off
set number! relativenumber!   " toggle hybrid line numbers

set foldmethod=indent
set foldlevel=99

nmap nt :NERDTreeToggle<CR>
nmap ip :IPythonNew<CR>

nmap w= :vertical resize +5<CR>
nmap w- :vertical resize -5<CR>
nmap w, :res -5<CR>
nmap w. :res +5<CR>
filetype off

inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>" 

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'jalvesaq/Nvim-R'
Plugin 'roxma/nvim-completion-manager'
Plugin 'gaalcaras/ncm-R'

Plugin 'sirver/UltiSnips'
Plugin 'lervag/vimtex'

Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'tmhedberg/SimpylFold'
"Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-scripts/functionlist.vim'
Plugin 'ivanov/vim-ipython'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on
