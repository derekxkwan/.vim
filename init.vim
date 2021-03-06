call plug#begin('~/.vim/plugged')
Plug 'tidalcycles/vim-tidal'
"Plug 'neomvim/nvim-lspconfig'
Plug 'https://github.com/supercollider/scvim.git'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'https://github.com/mipmip/vim-run-in-blender.git'
Plug 'vimwiki/vimwiki'
Plug 'https://github.com/itchyny/vim-haskell-indent.git'
Plug 'https://github.com/eagletmt/neco-ghc.git'
"Plug 'deoplete-plugins/deoplete-jedi'
"Plug 'deoplete-plugins/deoplete-tag'
"Plug 'jpalardy/vim-slime'
"Plug 'parsonsmatt/intero-neovim'
Plug 'sophacles/vim-processing'
call plug#end()

"let deoplete#tag#cache_limit_size = 5000000
"let g:deoplete#enable_at_startup = 1
"call deoplete#custom#option('auto_complete_delay', 250)
let g:vimwiki_list = [{ 'path': '$HOME/vimwiki/',
       \ 'syntax':'markdown', 'ext': '.md' }]
"call deoplete#custom#option('sources', {'_': ['tag', 'buffer']})
"call deoplete#custom#option('smart_case', v:true)

let g:tidal_no_mappings = 1
let g:scSplitDirection = "v"

set mouse=a
set ttyfast
set lazyredraw
set nocursorline
set scrolljump=-100
set scrolloff=999
let maplocalleader=","
:tnoremap <Esc> <C-\><C-n>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I

map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

colo ron
set splitbelow
set splitright

syntax on
filetype plugin indent on

set nocompatible
set autoread
set wildmenu
set ignorecase
set hlsearch
set incsearch
set lazyredraw
set magic
set autoindent
set nu

set showmatch
set mat=2

set noerrorbells
set novisualbell

set expandtab
set shiftwidth=4
set tabstop=4

"Terminal stuff
autocmd TermOpen * startinsert
autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>
autocmd TermOpen * setlocal nonumber norelativenumber

"runtime custom/lspconf.vim
