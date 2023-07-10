" ==================== coc.nvim ====================
" CocInstall coc-pairs coc-explorer coc-json
let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-explorer',
    \ 'coc-clangd',
    \ 'coc-pairs',
    \ 'coc-vimlsp'
    \ ]
nmap <LEADER>e <Cmd>CocCommand explorer<CR>
nnoremap <silent> <LEADER>y  :<C-u>CocList -A --normal yank<cr>
set nobackup
set nowritebackup
" " Always show the signcolumn, otherwise it would shift the text each time
" " diagnostics appear/become resolved.
set signcolumn=yes
"
" inoremap <silent><expr> <TAB>
inoremap <silent><expr> <C-j>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <expr><C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<CR>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<S-TAB>'

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> gh :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" augroup mygroup
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder.
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end
"
" " Applying codeAction to the selected region.
" " Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)
"
" " Remap keys for applying codeAction to the current buffer.
" nmap <leader>ac  <Plug>(coc-codeaction)
" " Apply AutoFix to problem on the current line.
" " nmap <leader>qf  <Plug>(coc-fix-current)
"
" " Run the Code Lens action on the current line.
" nmap <leader>cl  <Plug>(coc-codelens-action)
"
" " Map function and class text objects
" " NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" xmap if <Plug>(coc-funcobj-i)
" omap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap af <Plug>(coc-funcobj-a)
" xmap ic <Plug>(coc-classobj-i)
" omap ic <Plug>(coc-classobj-i)
" xmap ac <Plug>(coc-classobj-a)
" omap ac <Plug>(coc-classobj-a)
"
" " Remap <C-f> and <C-b> for scroll float windows/popups.
" if has('nvim-0.4.0') || has('patch-8.2.0750')
"   nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"   nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"   inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
"   inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
"   vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"   vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" endif
"
" " Use CTRL-S for selections ranges.
" " Requires 'textDocument/selectionRange' support of language server.
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)
"
" " Add `:Format` command to format current buffer.
" command! -nargs=0 Format :call CocActionAsync('format')
"
" " Add `:Fold` command to fold current buffer.
" command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
" " Add `:OR` command for organize imports of the current buffer.
" command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')
"
" " Add (Neo)Vim's native statusline support.
" " NOTE: Please see `:h coc-status` for integrations with external plugins that
" " provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
" " Mappings for CoCList
" " Show all diagnostics.
" nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions.
" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" " Show commands.
" nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document.
" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols.
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list.
" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


" ==================== vim-auto-save ====================
let g:auto_save = 1
let g:auto_save_silent = 1  " do not display the auto-save notification
let g:auto_save_events = ["InsertLeave", "CursorHold", "CompleteDone"]


" ==================== lightline ====================
" set t_Co=256      "在windows中用xshell连接打开vim可以显示色彩
set laststatus=2  "永远显示状态栏
set scroll=8
      " \ 'colorscheme': 'darculaOriginal',
      "
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
          \ 'filename': '%F'
          \ }
  \ }

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0


" ==================== Nerdcommenter ====================
" map omg <Plug>NERDCommenterToggle
map <LEADER>/ <plug>NERDCommenterToggle
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCustomDelimiters = { 'c': { 'left': '//',  'leftAlt': '/**','rightAlt': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" ==================== easymotion ====================
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" `s{char}{label}`
" nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)
"
" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1


" ==================== indentline ====================
let g:indentLine_char = '▏'
let g:indentLine_fileTypeExclude = ['coc-explorer']


" ==================== lazygit ====================
noremap <silent><c-g> :LazyGit<CR>
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 1.0 " scaling factor for floating window
let g:lazygit_floating_window_border_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_use_neovim_remote = 1 " for neovim-remote support


" ==================== FZF ====================
let g:fzf_preview_window = ['right,50%', 'ctrl-/']
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

nnoremap <silent> <C-f> :Rg <CR>
nnoremap <silent> <C-t> :Files <CR>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

let g:fzf_layout = { 'window': { 'width': 1, 'height': 1 } }


" ==================== nvim-hlslens ====================
" noremap <silent> = <Cmd>execute('normal! ' . v:count1 . 'n')<CR>
"             \<Cmd>lua require('hlslens').start()<CR>
" noremap <silent> - <Cmd>execute('normal! ' . v:count1 . 'N')<CR>
"             \<Cmd>lua require('hlslens').start()<CR>
" noremap * *<Cmd>lua require('hlslens').start()<CR>
" noremap # #<Cmd>lua require('hlslens').start()<CR>


" ==================== joshuto ====================
" noremap <silent><C-p> :Joshuto<CR>


" ==================== maximizer ====================
noremap <silent><BS> :MaximizerToggle<CR>


" ==================== fswitch ====================
noremap <silent><C-p> :FSHere<CR>


" ==================== git-blame ====================
let g:gitblame_enabled = 0
noremap <silent><C-b> :GitBlameToggle<CR>


" ==================== PLUGINS ====================
call plug#begin()
    Plug 'doums/darcula'                             " Theme
    Plug 'itchyny/lightline.vim'                     " Statusbar theme
    Plug 'easymotion/vim-easymotion'                 " Cursor move
    Plug '907th/vim-auto-save'                       " Auto save
    Plug 'preservim/nerdcommenter'                   " Comment
    Plug 'yggdroot/indentline'                       " Indentline
    Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Conquer of Completion
    Plug 'ryanoasis/vim-devicons'                    " Nerdfont
    Plug 'kdheepak/lazygit.nvim'                     " Lazygit
    Plug 'kevinhwang91/nvim-hlslens'                 " Highlight search lens
    Plug 'petertriho/nvim-scrollbar'                 " Scrollbar
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'sheerun/vim-polyglot'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'yuki-yano/fzf-preview.vim'
    Plug 'theniceboy/joshuto.nvim'
    Plug 'szw/vim-maximizer'
    Plug 'vim-scripts/argtextobj.vim'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'derekwyatt/vim-fswitch'
    Plug 'f-person/git-blame.nvim'
    Plug 'sindrets/diffview.nvim'

    " Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
call plug#end()

