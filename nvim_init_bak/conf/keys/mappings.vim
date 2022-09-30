" 打开配置文件 anywhere
nnoremap <LEADER>v :tabe ~/.config/nvim/init.vim<CR>
" Better nav for omnicomplete
" inoremap <expr> <c-j> ("\<C-n>")
" inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-l>    :vertical resize -2<CR>
nnoremap <M-h>    :vertical resize +2<CR>
nnoremap <CR>     :MaximizerToggle<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
nnoremap X :bd<CR>

" Alternate way to quit
nnoremap <S-Q> :q<CR>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv


" ===
" === MYVIMRC
" ===

" 高亮
nnoremap <Leader><CR> :nohlsearch<CR>

" 光标移动
noremap L $
noremap H ^
noremap J 5j
noremap K 5k

" 标签页
map <Leader><Leader>t :tabe<CR>
map <Leader>k :-tabnext<CR>
map <Leader>j :+tabnext<CR>

" source
map <LEADER><LEADER>R :source $MYVIMRC<CR>
map <LEADER><tab> /<++><CR>:nohlsearch<CR>c4l
inoremap <C-\> <++><right>

