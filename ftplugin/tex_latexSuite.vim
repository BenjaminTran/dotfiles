" LaTeX filetype
"	  Language: LaTeX (ft=tex)
"	Maintainer: Srinath Avadhanula
"		 Email: srinath@fastmail.fm

if !exists('s:initLatexSuite')
	let s:initLatexSuite = 1
	exec 'so '.fnameescape(expand('<sfile>:p:h').'/latex-suite/main.vim')

	silent! do LatexSuite User LatexSuiteInitPost
endif

silent! do LatexSuite User LatexSuiteFileType

" this is mostly a matter of taste. But LaTeX looks good with just a bit of
" indentation.
set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you type
" in \ref{fig: and press <C-n> you will automatically cycle through all the
" figure labels. Very useful!
set iskeyword+=:

"=============================================
" IMAP() FUNCTIONS

" Include graphics
call IMAP ('EIE', "\\begin{figure}[H]\<CR>\\centering\<CR>\\includegraphics[scale=<++>,frame]{<++>}\<CR>\\caption{<++>}\<CR>\\label{<++>}\<CR>\\end{figure}\<CR><++>",'tex')

" Figure environment
call IMAP ('EFE', "\\begin{figure}[H]\<CR>\\centering\<CR><++>\<CR>\\caption{<++>}\<CR>\\label{<++>}\<CR>\\end{figure}\<CR><++>",'tex')

" Vocab
call IMAP ('VOC', "\\vocab[]{<++>}<++>",'tex')

" Heading
call IMAP ('HHH',"\\phantomsection\<CR>\\addcontentsline{toc}{chapter}{Session <++> <+date+>}\<CR>\\begin{minipage}{\\textwidth}\<CR>\\begin{center}\<CR>\\textsc{Session <++>}\\\\\<CR><+date+>\\\\\<CR>\\line(1,0){480}\<CR>\\end{center}\\end{minipage}\<CR>\\vspace{0.1cm}\<CR>\\setcounter{section}{0}\<CR>\\setcounter{chapter}{<++>}<++>",'tex')

" Align Env
call IMAP ('EAE',"\\begin{align}\<CR><++>\\\\\<CR>\\eqname{<++>}\<CR>\\label{<++>}\<CR>\\end{align}<++>",'tex')

" Units
call IMAP ('SI',"\\; \\mathrm{<++>}",'tex')

" Math mode
call IMAP ('Mm',"$ <++> $<++>",'tex')

" Display Math Mode
call IMAP ('MM',"\<CR>\\[ <++> \\]\<CR><++>",'tex')

"Thermodynamic Partial Derivative Completion
call IMAP ('\thpd', "\\thpd{<++>}{<++>}{<++>}<++>",'tex')

"over-ride `w
call IMAP ('`w','\omega','tex')

" display mode ordinary derivative
call IMAP ('\dod',"\\dod{<++>}{<++>}<++>",'tex')

"display mode partial derivative
call IMAP ('\dpd',"\\dpd{<++>}{<++>}<++>",'tex')

"textsubscript
call IMAP ('_-',"\\textsubscript{<++>}<++>",'tex')

"textsuperscript
call IMAP ('^6',"\\textsuperscript{<++>}<++>",'tex')

map :W :w<CR><leader>ll
map <leader>lp :LLPStartPreview<CR>
imap <D-i> <M-i>
"map <D-j> <C-j>
"imap <D-j> <C-j>
map <Space><Space> <C-j>
imap <Space><Space> <C-j>
imap <leader>i <m-i>
"imap <leader>i <ESC>:set fo-=t<CR>i
"imap <leader>I <ESC>:set fo+=t<CR>i
setlocal spell spelllang=en_us
set tw=80
set dictionary=/usr/share/dict/words
"set spellfile=~/.vim/spell/web2.utf-8.add
" <leader>ls to forward search
map <leader>ls :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r <C-r>=line('.')<CR> %<.pdf %<CR><CR>
au FocusLost * silent! wa
"if version >= 748
"    set macmeta
"endif

