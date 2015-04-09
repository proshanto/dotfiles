execute pathogen#infect()

syntax on

filetype plugin indent on

colorscheme lucius
LuciusDarkLowContrast

"Resolves conflict with terminal color schemes
"http://stackoverflow.com/questions/4325682/vim-colorschemes-not-changing-background-color#answer-4326956
set t_Co=256

"Tab Stuff
set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab

"Show command in bottom right portion of the screen
set showcmd

"Indent stuff
set smartindent
set autoindent

"Always show the status line
set laststatus=2

"Prefer a slightly higher line height
set linespace=3

"Better line wrapping 
set wrap
set textwidth=79
set formatoptions=qrn1

"Set incremental searching
set incsearch

"Highlight searching
set hlsearch

"Enable Code Folding
set foldenable

"Hide Mouse When Typing
set mousehide

"Shortcut for colon and it saves time
nmap <space> :

"Change zen coding plugin extension key to ctrl + e
let g:user_zen_expandabbr_key = '<C-e>'

"Opens a Vertical Split and Switches Over (\v)
nnoremap <leader>v <C-w>v<C-w>l

"Shortcut for NERDTreeToggle
nmap ntt :NERDTreeToggle<cr>

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

"autocmd vimenter * if !argc() | NERDTree | endif

"Automatically change current directory to that of the file in the buffer
autocmd BufEnter * cd %:p:h

"Auto-completion menu
set wildmode=list:longest

"Map escape key to <space><space> ---> Much faster
imap <space><space> <esc>

"Map ctrl+s to save ---> Much faster
"imap <c-s> <esc>:w<cr>i

"http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"to add spell checking and automatic wrapping at the recommended 72 columns to you commit messages
"http://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message
autocmd Filetype gitcommit setlocal spell textwidth=72
