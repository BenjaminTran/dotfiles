" enable mouse
set mouse=a

"easier indentation handling
vnoremap < <gv
vnoremap > >gv

" vim-airline
" smarter tab line
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
"let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#fnamemod = ':t'
" Remove vanilla status indicator
set noshowmode
" Disable tagbar faster performance
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#syntastic#enabled = 0

"Show buffer number in buffer bar
let g:airline#extensions#tabline#buffer_nr_show = 1

"Neocomplete
let g:neocomplete#enable_at_startup = 1

"TagBar
nmap <F8> :TagbarToggle<CR>

"let g:tagbar_left = 1
"let g:tagbar_vertical = 25
"let NERDTreeWinPos = 'left'
"nnoremap <f5> :NERDTreeToggle <CR> :TagbarToggle <CR>

"YouCompleteMe
let g:ycm_global_ycm_extra_conf = '/Users/blt1/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm'
let b:ycm_largefile=1
let g:enable_ycm_at_startup = 0


" Show trailing whitespace
highlight ExtraWhitespace ctermbg=lightgreen guibg=lightgreen
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=lightgreen guibg=lightgreen

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

let mapleader=","
set sm
set showmatch
set ai
set nojoinspaces
highlight CursorLine ctermbg=DarkGray
execute pathogen#infect()
syntax on
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1
"set foldmethod=marker
set hlsearch
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
set scrolloff=5
set noeb vb t_vb= "disables bell"
set ruler
set complete+=kspell " for dictionary completion
set rnu
set number
set t_Co=256
set hidden "allow switch buffers without saving currently modified buffer
set colorcolumn=+1
"set shell=/bin/bash\ -i
hi Search cterm=NONE ctermfg=blue ctermbg=grey
au BufWinLeave * mkview          " auto save created folds
au BufWinEnter * silent loadview " auto load created folds

" Change cursor shape to vertical bar in insert mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\" " Vertical bar in insert mode
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\" " Block in normal mode
else
    let &t_SI = "\<ESC>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<ESC>]50;CursorShape=0\x7" " Block in normal mode
endif

" navigating tabs
nnoremap <leader>n :bp<CR>
nnoremap <leader>m :bn<CR>
nnoremap <leader>t :tabnew<CR>
"nnoremap <expr> du &diff ? ':diffup<CR>' : ''

inoremap fj <ESC>
inoremap gqq <Esc>{gq}2<c-o>
nnoremap <S-j> 15j
nnoremap <S-k> 15k
nnoremap <C-e> 5<C-e>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-y> 5<C-y>
nnoremap <CR> o<Esc>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>p "*p
nnoremap <leader>q @q
nnoremap gqq {gq}2<c-o>
nnoremap zz z=1<CR><CR>
vnoremap <leader>r "y:s/\<\>//g<left><left><left><left><left>
vnoremap <leader>y "*y
vnoremap fj <ESC>
let g:C_Ctrl_j ='off'
" Solarized
"set background = light
"set background=dark
if has('gui_running')
	    set background=light
            colorscheme solarized
            let g:solarized_termcolors=256
else
    colorscheme skittles_autumn
endif

" VIM Configurations from https://github.com/mcantor/no_plugins
set path+=** "search through all subdirectories of current folder
set wildmenu
"netrw file browsing
let g:netrw_banner=0 " disable banner
let g:netrw_browse_split=4 "open in prior window
let g:netrw_altv=1 "open splits to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s)\zs\.\S\+'
"Customizable snippets
"Snippets folder located in ~/.vim/.snippets/
nnoremap ,html :-1read $HOME/.vim/.snippets/.skeleton.html<CR>3jwf>a

"VIM-LATEX SUITE OPTIONS
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a single file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plantex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
"let g:Tex_TreatMacViewerAsUnix = 1
"let g:Tex_ExecuteUNIXViewerInForeground = 1
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_ps = 'open -a Preview'
let g:Tex_ViewRule_pdf = 'open -a skim'
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*'
let g:Tex_MultipleCompileFormats = 'pdf, aux, glo'
" ,ls to forward search
map <leader>ls :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r <C-r>=line('.')<CR> %<.pdf %<CR><CR>
"let g:Tex_AutoFolding = 0


" vim-cpp-enhanced-highlight options, see gitHub
" https://github.com/octol/vim-cpp-enhanced-highlight

"Highlighting of library concepts
let g:cpp_concepts_highlight = 1

"Highlighting of class scope
let g:cpp_class_scope_highlight = 1

" Syntastic
let g:syntastic_mode_map = { 'mode': 'passive' }
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Live Latex PDF viewer plugin
let g:livepreview_previewer = 'open -a skim'
"autocmd BufEnter * set updatetime=1000
set updatetime=1000

"Rainbow parentheses

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"Vimdiff set wrap (can't use because messes up coloring of changes)
"autocmd FilterWritePre * if &diff | setlocal wrap< | endif


xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
      echo "@".getcmdline()
      execute ":'<,'>normal @".nr2char(getchar())
endfunction

"yank to clipboard
if has("clipboard")
    set clipboard=unnamed " copy to the system clipboard

    if has("unnamedplus") " X11 support
        set clipboard+=unnamedplus
    endif
endif
