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
set laststatus=2

"Terminal stuff
autocmd TermOpen * startinsert
autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>
autocmd TermOpen * setlocal nonumber norelativenumber

"netrw stuff
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

"statusbar stuff
highlight StatuslineBufnum ctermfg=Black ctermbg=DarkMagenta
highlight StatuslineFilename ctermfg=Black ctermbg=DarkYellow
highlight StatuslineFileformat ctermfg=White ctermbg=DarkGray
highlight StatuslineFiletype ctermfg=DarkYellow ctermbg=DarkGray
highlight StatuslineModified ctermfg=White ctermbg=DarkRed
highlight StatuslineNumbers ctermfg=Black ctermbg=DarkMagenta
highlight StatuslinePercent ctermfg=White ctermbg=DarkGray

set statusline=
set statusline+=%#StatuslineBufnum#   " Set color for bufnum
set statusline+=\ %n\                       " bufnum
set statusline+=%#StatuslineFileformat#   " Set color for file format
set statusline+=\ %{&ff}                 "file format
set statusline+=%#StatuslineFiletype#   " Set color for file info
set statusline+=%y\                        "file type
set statusline+=%#StatuslineFilename#   " Set color for file path
set statusline+=\ %F                     " Full file path, at most 40 characters
set statusline+=\                      " A space
set statusline+=%#StatuslineModified#  " Set color for modified flag
set statusline+=%m                     " Modified flag
set statusline+=%r                     " readonlyflag
set statusline+=%#StatuslineFilename#  " Set color for the rest of the bar
set statusline+=%=                     " Split the left and right sides
set statusline+=%#StatuslineNumbers#   " Set color for line numbers
set statusline+=\ %l,                    " Line number
set statusline+=%-3c                    " Column number
set statusline+=/\                        " Slash
set statusline+=%L\                      " Total number of lines
set statusline+=%#StatuslinePercent#   " Set color for percent
set statusline+=\ %P\                       " percent of file


"runtime custom/lspconf.vim
