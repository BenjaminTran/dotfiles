" enable mouse
set mouse=a

" navigating tabs
map <leader>n <esc>:tabprevious<CR>
map <leader>m <esc>:tabnext<CR>
nnoremap <leader>t :tabnew<CR>

"easier indentation handling
vnoremap < <gv
vnoremap > >gv

" vim-airline smarter tab line
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
"let g:airline_solarized_bg='dark'

" Show whitespace
highlight ExtraWhitespace ctermbg=lightgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=lightgreen guibg=lightgreen

let mapleader=","
set sm
set showmatch
set ai
highlight CursorLine ctermbg=DarkGray
execute pathogen#infect()
syntax on
filetype plugin indent on
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
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<ESC>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<ESC>]50;CursorShape=0\x7" " Block in normal mode
endif

nnoremap <leader>e :NERDTree<CR>
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>
vnoremap <leader>y "*y
nnoremap <leader>p "*p
nnoremap gqq {gq}2<c-o>
inoremap gqq <Esc>{gq}2<c-o>
nnoremap <CR> o<Esc>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <S-j> 15jz.
nnoremap <S-k> 15kz.
nnoremap <leader>q @q
vnoremap <leader>r "y:s/\<\>//g<left><left><left><left><left>
inoremap fj <ESC>
vnoremap fj <ESC>
"nnoremap <leader>e $
"nnoremap <leader>b ^
nnoremap zz z=1<CR><CR>
let g:C_Ctrl_j ='off'
" Solarized
"set background = light
"set background=dark
if has('gui_running')
	    "set background=light
	"else
	    set background=light
            colorscheme solarized
            let g:solarized_termcolors=256
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

let g:syntastic_cpp_checkers = []
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Live Latex PDF viewer plugin
let g:livepreview_previewer = 'open -a skim'
"autocmd BufEnter * set updatetime=1000
set updatetime=1000
