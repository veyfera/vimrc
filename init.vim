set number
" set spell
syntax enable
set termguicolors

filetype plugin on

"  From here starts python IDE stuff

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
" autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
syntax sync fromstart

" Better copy and paste
" set passtoggle=<F2>
" set clipboard=unnamed

" make  backspace behave like normal
" set bs=2

" Rebind <Leader> key
let mapleader = ","

"  Removes highlight of your last search
" noremap <C-n> :nohl<CR>
" vnoremap <C-n> :nohl<CR>
" inoremap <C-n> :nohl<CR>

" Quick autosave
noremap <C-Z> :write<CR>
vnoremap <C-Z> <CC>:write<CR>
inoremap <C-Z> <Esc>:write<CR>a

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa<CR>  " Quit all windows
noremap <Leader>q :q!<CR>  " Quit current without saving

" bind Ctrl+<movement> key to move around windows, instead of using Ctrl+w+<movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h  

" easier moving between tabs
map <leader>n <esc>:tabprevious<CR>
map <leader>m <esc>:tabnext<CR>
map <leader>t <esc>:tabnew<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
vnoremap < <gv  " better indentation use <
vnoremap > >gv  " better indentation use >

" Show line numbers and length 
set nowrap  " don't automatically wrap on lead
set fo-=t   " don't automatically wrap text when typing
" uncomment later
"set colorcolumn=80
"highlight ColorColumn ctermbg=233

" easier formatting of paragraphs, wrap so no pass of wrap
vmap Q gq
nmap Q gqap

" Useful settings
set history=700
set undolevels=700

" use spaces in stead of tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Create backup files in one directory 
set backupdir=~/.vimstuff/backup
set dir=~/.vimstuff/backup/swap
set undodir=~/.vimstuff/backup/undos
set undofile
set bk 

" my stuff
"run a python3 file 
noremap <Leader>p :! python3 %:p<CR>
noremap <Leader>c :! clear<CR><CR>

"toggle spell
noremap <Leader>s :set spell<CR>
noremap <Leader>S :set nospell<CR>

" make logs readable
noremap <Leader>l :%s/\\n/\r/g<CR>

call plug#begin('~/.vim/plugged')

"Plug 'arcticicestudio/nord-vim'
"Plug 'pangloss/vim-javascript'
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"Plug 'jparise/vim-graphql'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"let g:coc_global_extensions = [
"  \ 'coc-tsserver'
" \ ]

Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " File navigator
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
"Plug 'leafOfTree/vim-svelte-plugin'
call plug#end()

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

"colorscheme nord
colorscheme pyte

nmap <C-_>   <Plug>NERDCommenterToggle
imap <C-_>   <Esc><Plug>NERDCommenterToggle<CR>a
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

" Use Ctrl-b Ctrl-b to open a sidebar with the list of files
map <C-b><C-b> :NERDTreeToggle<cr>

let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript,javascriptreact,typescriptreact,sass EmmetInstall

let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
  \  'javascript' : {
    \      'extends' : 'jsx',
    \  },
  \  'typescript' : {
    \      'extends' : 'tsx',
    \  },
  \}
