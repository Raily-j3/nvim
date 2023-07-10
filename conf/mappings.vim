" 标记跳转
nnoremap m mJ
nnoremap ` `J
noremap H _
noremap L g_
noremap J 5<C-e>
noremap K 5<C-y>
noremap [[ %
noremap ]] ]}
nnoremap { [[kzt
nnoremap } ]]]]kzt

" 文件编辑
nnoremap <LEADER>q :q<CR>
nnoremap <LEADER>w :q!<CR>
nnoremap <silent><CR> :noh<CR>

" 标签页与缓冲区
nnoremap <silent><LEADER>t :tabe<CR>
nnoremap <silent><LEADER>n :tabc<CR>
nnoremap <silent><C-h> :tabp<cr>
nnoremap <silent><C-l> :tabn<cr>
nnoremap <LEADER>z :bd<CR>

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

xmap <LEADER>F ggVG<LEADER>f<C-o>zz
nmap <LEADER>F ggVG<LEADER>f<C-o>zz
