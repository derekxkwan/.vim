call plug#begin("~/.vim/plugged")
Plug 'tidalcycles/vim-tidal'
"Plug 'neomvim/nvim-lspconfig'
Plug 'https://github.com/supercollider/scvim.git'
Plug 'stevearc/vim-arduino'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'https://github.com/mipmip/vim-run-in-blender.git'
Plug 'vimwiki/vimwiki'
Plug 'https://github.com/itchyny/vim-haskell-indent.git'
Plug 'https://github.com/eagletmt/neco-ghc.git'
Plug 'neovim/nvim-lspconfig'
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

runtime! ftplugin/man.vim
set shm=a
set mouse=a
set ttyfast
set nocursorline
set scrolljump=-100
set scrolloff=0
let mapleader=","
set timeoutlen=1000
:tnoremap <Esc> <C-\><C-n>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I
nnoremap <leader>bl :ls<CR>:b<space>
nnoremap <leader>br :ls t<CR>:b<space>
nnoremap <Tab> <C-W>w
nnoremap <S-Tab> <C-W>W
nnoremap Q @q
vnoremap Q :norm @q<CR>
nnoremap <leader>^ -j

" disable middle click paste
nnoremap <MiddleMouse> <Nop>
nnoremap <2-MiddleMouse> <Nop>
nnoremap <3-MiddleMouse> <Nop>
nnoremap <4-MiddleMouse> <Nop>
inoremap <MiddleMouse> <Nop>
inoremap <2-MiddleMouse> <Nop>
inoremap <3-MiddleMouse> <Nop>
inoremap <4-MiddleMouse> <Nop>

map gn :bn<cr>
map gp :bp<cr>
map g# :b#<cr>

colo torte
set splitbelow
set splitright

syntax on
filetype plugin indent on

set confirm
set nocompatible
set autoread
set wildmenu
set wildmode=longest:full,full
set showcmd
set wrap
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

autocmd Filetype html setlocal nocindent nosmartindent indentexpr=
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

"misc stuff
" https://vim.fandom.com/wiki/Capitalize_words_and_regions_easily
if (&tildeop)
  nmap gcw guw~l
  nmap gcW guW~l
  nmap gciw guiw~l
  nmap gciW guiW~l
  nmap gcis guis~l
  "nmap gc$ gu$~l
  "nmap gcgc guu~l
  "nmap gcc guu~l
  "vmap gc gu~l
else
  nmap gcw guw~h
  nmap gcW guW~h
  nmap gciw guiw~h
  nmap gciW guiW~h
  nmap gcis guis~h
  "nmap gc$ gu$~h
  "nmap gcgc guu~h
  "nmap gcc guu~h
  "vmap gc gu~h
endif

" Capitalize every word on the line
nmap gcc :s/\v<(.)(\w*)/\u\1\L\2/g<CR>
nmap gcgc gcc

" Capitalize every word in the visual selection.
" Since the visual selection range ('<,'>) is linewise
" need \%V to limit match to only characters in selection.
vmap gc :s/\%V\v<(.)(\w*)/\u\1\L\2/g<CR> \| `<

" Capitalize every word from current to last on line 
" (needs gc mapping from above)
nmap gc$ viW$gc

nmap <leader>h :noh<CR>
"statusline stuff
highlight StatuslineBufnum ctermfg=Black ctermbg=DarkMagenta
highlight StatuslineFilename ctermfg=Black ctermbg=DarkCyan
highlight StatuslineFileformat ctermfg=White ctermbg=DarkGray
highlight StatuslineFiletype ctermfg=DarkYellow ctermbg=DarkGray
highlight StatuslineModified ctermfg=White ctermbg=DarkRed
highlight StatuslineNumbers ctermfg=White ctermbg=DarkGray
highlight StatuslinePercent ctermfg=Black ctermbg=DarkMagenta

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


" from marsio at https://stackoverflow.com/questions/23012391/how-and-where-is-my-viminfo-option-set
set viminfo=%,<800,'10,/50,:100,h,f0,n~/.vim/cache/.viminfo
"           | |    |   |   |    | |  + viminfo file path
"           | |    |   |   |    | + file marks 0-9,A-Z 0=NOT stored
"           | |    |   |   |    + disable 'hlsearch' loading viminfo
"           | |    |   |   + command-line history saved
"           | |    |   + search history saved
"           | |    + files marks saved
"           | + lines saved each register (old name for <, vi6.2)
"           + save/restore buffer list


" ----- python lsp stuff -----
"
set completeopt-=preview
" from https://jdhao.github.io/post/neovim_builtin_lsp_hands_on/
" nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
" nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
" nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>


autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc
" use omni completion provided by lsp


lua << EOF
lspconfig = require("lspconfig")
lspconfig.pylsp.setup{
    on_attach=custom_attach,
    -- filetypes = {'python'},
    settings = {
        pylsp = {
            plugins = {
                black = {enabled = false},
                autopep8 = {enabled = false},
                yapf = {enabled=false},
                pylint = {enabled = false},
                pyflakes={enabled=false},
                pycodestyle={enabled=false},
                mccabe={enabled=false},
                flake8={enabled=false}
                -- pylint = {args = {'--ignore=E500,E231', '-'}, enabled=true, debounce=200},
                }
            }
        }

}

EOF



