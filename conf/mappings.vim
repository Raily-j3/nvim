
" 标记跳转
nnoremap m mj
nnoremap ` `j
nnoremap H _
nnoremap L g_
nnoremap U 5k
nnoremap R 5j

" 文件编辑
nnoremap <LEADER>q :q<CR>
nnoremap <LEADER>w :w<CR>
nnoremap <LEADER>e :q!<CR>
nnoremap <LEADER>r :w<CR>:source $HOME/AppData/Local/nvim/init.vim<CR>
nnoremap <LEADER><CR> :noh<CR>

" 标签页与缓冲区
nnoremap <LEADER>t :tabe<CR>
nnoremap <LEADER>n :tabc<CR>
nnoremap <S-w> :tabp<cr>
nnoremap <S-e> :tabn<cr>
nnoremap <LEADER>z :bd<CR>
nnoremap <LEADER>j :bnext<CR>
nnoremap <LEADER>k :bprev<CR>

" Use alt + hjkl to resize windows
nnoremap <C-k>    :resize -2<CR>
nnoremap <C-j>    :resize +2<CR>
nnoremap <C-h>    :vertical resize -2<CR>
nnoremap <C-l>    :vertical resize +2<CR>
" nnoremap <CR>     :MaximizerToggle<CR>

" Better window navigation
nnoremap <LEADER>h <C-w>h
nnoremap <LEADER>j <C-w>j
nnoremap <LEADER>k <C-w>k
nnoremap <LEADER>l <C-w>l

" 多行缩进
vnoremap < <gv
vnoremap > >gv

