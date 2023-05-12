" 标记跳转
nnoremap m mJ
nnoremap ` `J
noremap H _
noremap L g_
noremap J 5j
noremap K 5k
noremap [[ %
noremap ]] ]}
nnoremap { [[kzt
nnoremap } ]]]]kzt

" 文件编辑
nnoremap <LEADER>q :q<CR>
nnoremap <LEADER>w :q!<CR>
nnoremap <LEADER>r :w<CR>:source $HOME/.config/nvim/init.vim<CR>
nnoremap <silent><LEADER><CR> :noh<CR>

" 标签页与缓冲区
nnoremap <silent><LEADER>t :tabe<CR>
nnoremap <silent><LEADER>n :tabc<CR>
nnoremap <silent><C-h> :tabp<cr>
nnoremap <silent><C-l> :tabn<cr>
nnoremap <LEADER>z :bd<CR>
" nnoremap <LEADER>j :bnext<CR>
" nnoremap <LEADER>k :bprev<CR>

" Use alt + hjkl to resize windows
nnoremap <C-k>    :resize -2<CR>
nnoremap <C-j>    :resize +2<CR>
" nnoremap <C-h>    :vertical resize -2<CR>
" nnoremap <C-l>    :vertical resize +2<CR>
" nnoremap <CR>     :MaximizerToggle<CR>

" Better window navigation
nnoremap <LEADER>h <C-w>h
nnoremap <LEADER>j <C-w>j
nnoremap <LEADER>k <C-w>k
nnoremap <LEADER>l <C-w>l

" 多行缩进
vnoremap < <gv
vnoremap > >gv

" 切换 relative number
nnoremap - :set invrnu<CR>
