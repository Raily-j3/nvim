"autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype markdown inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype markdown inoremap <buffer> ,l ---<Enter><Enter>
autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap <buffer> ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><++><Enter><Enter>```<Enter><Enter><++><Esc>4kkA
autocmd Filetype markdown inoremap <buffer> ,m - [ ] 
" autocmd Filetype markdown inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,p <img src="" alt="<++>" width=510 /> <++><Esc>F=;;la
autocmd Filetype markdown inoremap <buffer> ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,n --------<Enter>
autocmd Filetype markdown inoremap <buffer> ,hr <font color=#FF0000 ></font> <++><Esc>F/hi
autocmd Filetype markdown inoremap <buffer> ,hg <font color=#008000 ></font> <++><Esc>F/hi
autocmd Filetype markdown inoremap <buffer> ,hb <font color=#0000FF ></font> <++><Esc>F/hi
autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><Enter><++><Esc>kkA
autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><Enter><++><Esc>kkA
autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><Enter><++><Esc>kkA
autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><Enter><++><Esc>kkA
autocmd Filetype markdown inoremap <buffer> ,5 #####<Space><Enter><Enter><++><Esc>kkA
