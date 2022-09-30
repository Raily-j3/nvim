" ==================================Plug Config==================================
" ===
" === WhichKey
" ===
" Map leader to which_key
" nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
" vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
"
" " Create map to add keys to
" let g:which_key_map =  {}
" " Define a separator
" let g:which_key_sep = '→'
" " set timeoutlen=100
"
"
" " Not a fan of floating windows for this
" let g:which_key_use_floating_win = 0
"
" " Change the colors if you want
" highlight default link WhichKey          Operator
" highlight default link WhichKeySeperator DiffAdded
" highlight default link WhichKeyGroup     Identifier
" highlight default link WhichKeyDesc      Function
"
" " Hide status line
" autocmd! FileType which_key
" autocmd  FileType which_key set laststatus=0 noshowmode noruler
"   \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler
"
" " Single mappings
" let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'comment' ]
" let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
" let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
" let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
" let g:which_key_map['r'] = [ ':Ranger'                    , 'ranger' ]
" let g:which_key_map['S'] = [ ':Startify'                  , 'start screen' ]
" let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
" let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
" let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]
"
" " s is for search
" let g:which_key_map.s = {
"       \ 'name' : '+search' ,
"       \ '/' : [':History/'     , 'history'],
"       \ ';' : [':Commands'     , 'commands'],
"       \ 'a' : [':Ag'           , 'text Ag'],
"       \ 'b' : [':BLines'       , 'current buffer'],
"       \ 'B' : [':Buffers'      , 'open buffers'],
"       \ 'c' : [':Commits'      , 'commits'],
"       \ 'C' : [':BCommits'     , 'buffer commits'],
"       \ 'f' : [':Files'        , 'files'],
"       \ 'g' : [':GFiles'       , 'git files'],
"       \ 'G' : [':GFiles?'      , 'modified git files'],
"       \ 'h' : [':History'      , 'file history'],
"       \ 'H' : [':History:'     , 'command history'],
"       \ 'l' : [':Lines'        , 'lines'] ,
"       \ 'm' : [':Marks'        , 'marks'] ,
"       \ 'M' : [':Maps'         , 'normal maps'] ,
"       \ 'p' : [':Helptags'     , 'help tags'] ,
"       \ 'P' : [':Tags'         , 'project tags'],
"       \ 's' : [':Snippets'     , 'snippets'],
"       \ 'S' : [':Colors'       , 'color schemes'],
"       \ 't' : [':Rg'           , 'text Rg'],
"       \ 'T' : [':BTags'        , 'buffer tags'],
"       \ 'w' : [':Windows'      , 'search windows'],
"       \ 'y' : [':Filetypes'    , 'file types'],
"       \ 'z' : [':FZF'          , 'FZF'],
"       \ }
" "
" Register which key map
" call which_key#register('<Space>', "g:which_key_map")

" ===
" === Airline
" ===
" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'deus'

" ===
" === NERDTree
" ===
map tt :NERDTreeToggle<CR>
map tf :NERDTreeFind<CR>
let NERDTreeWinPos="right"

" ===
" === vim-tab-mode
" ===
map <LEADER>tm :TableModeToggle<CR>

" ===
" === Nerdcommenter
" ===
" map omg <Plug>NERDCommenterToggle
map <Leader>/ <plug>NERDCommenterToggle


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
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" ===
" === Auto save
" ===
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged", "TextChangedI", "CursorHoldI", "CompleteDone"]
let g:auto_save_silent = 1  " do not display the auto-save notification

" ===
" === Sneak
" ===
let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1

" remap so I can use , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

" ===
" === Quickscope
" ===
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F']
let g:qs_max_chars=150
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END

" ===
" === COC
" ===
" Some servers have issues with backup files, see #649.
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use R to show documentation in preview window.
nnoremap <silent> R :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" ===
" === Neoterm
" ===
let g:neoterm_default_mod = 'vertical'
let g:neoterm_size = 60
let g:neoterm_autoinsert = 1
nnoremap <C-q> :Ttoggle<CR>
inoremap <C-q> <Esc>:Ttoggle<CR>
tnoremap <C-q> <C-\><C-n>:Ttoggle<CR>

" ===
" === VimSpector
" ===
nnoremap <Leader>da :call vimspector#Launch()<CR>
nnoremap <Leader>dx :call vimspector#Reset()<CR>
" nnoremap <TAB>k :call vimspector#StepOut()<CR>
" nnoremap <TAB>l :call vimspector#StepInfo()<CR>
" nnoremap <TAB>j :call vimspector#StepOver()<CR>
nnoremap <Leader>d_ :call vimspector#Restart()<CR>
nnoremap <Leader>dn :call vimspector#Continue()<CR>
nnoremap <Leader>drc :call vimspector#RunTOCursor()<CR>
nnoremap <Leader>dp :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>de :call vimspector#ToggleConditionalBreakpoint()<CR>
nnoremap <Leader>dX :call vimspector#ClearBreakpoints()<CR>



" ===============================Plugins===============================
call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'sheerun/vim-polyglot'                     " Better Syntax Support
    Plug 'scrooloose/NERDTree'                      " File Explorer
    Plug 'jiangmiao/auto-pairs'                     " Auto pairs for '(' '[' '{'
    Plug 'ajmwagar/vim-deus'                        " Themes
    Plug 'easymotion/vim-easymotion'
    Plug 'mhinz/vim-startify'
    Plug 'dhruvasagar/vim-table-mode'               " Table mode
    Plug 'Yggdroot/indentLine'                      " Indent
    Plug '907th/vim-auto-save'                      " Auto save
    Plug 'tpope/vim-surround/'                      " Surround
    Plug 'mzlogin/vim-markdown-toc'
    Plug 'justinmk/vim-sneak'
    Plug 'unblevable/quick-scope'
    Plug 'ryanoasis/vim-devicons'                   " NerdFonts
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    Plug 'iamcco/markdown-preview.nvim', { 'do':
          \ 'cd app && yarn install'  }             " MarkdownPreview
    Plug 'preservim/nerdcommenter'                  " Auto comment
    Plug 'christoomey/vim-tmux-navigator'           " Like tmux in nvim 
    Plug 'szw/vim-maximizer'                        " Maxize split
    Plug 'kassio/neoterm'
    " Plug 'liuchengxu/vim-which-key'
    " Plug 'puremourning/vimspector'
    

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""
"    Plug 'ojroques/vim-scrollstatus'
"    Plug 'ctrlpvim/ctrlp.vim'
"    Plug 'w0ng/vim-hybrid'
"    Plug 'godlygeek/tabular' 
"    Plug 'mattn/emmet-vim'
"    Plug 'gcmt/wildfire.vim'
"    Plug 'jceb/vim-orgmode'
"    Plug 'puremourning/vimspector'
"    Plug 'mg979/vim-xtabline'

