let g:mapleader = "\<Space>" " set leader key
nnoremap <silent><LEADER>v :tabe $HOME/.config/nvim/init.vim<CR>
nnoremap <silent><LEADER>r :w<CR>:source $HOME/.config/nvim/init.vim<CR>
syntax on
filetype indent on

""" Theme
colorscheme darcula
set termguicolors

""" Cursor style
set cursorline " Enable highlighting of the current line
highlight CursorLine guifg=NONE guibg=#1b1b1b
set fillchars+=fold:\  foldtext='\{...'

""" Setting
set nu
set fo-=r
set noshowmode
set mouse=a
set clipboard=unnamedplus " Copy paste between vim and everything else
set scrolloff=5
set ignorecase " 大小写
" set t_Co=256                            " Support 256 colors

""" Hightlight
set hlsearch
set incsearch  " 搜索时高亮

""" Indent
set smartcase
set smartindent
set autoindent
set laststatus=0                        " Always display the status line
set tabstop=4                           " Insert 2 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces

""" 折叠
set foldmethod=syntax
set nofoldenable

lua <<EOF
EOF
