"DESC:I'm an EMACS fan, now exploring options in vim. some experimental stuff
"in this bash file lets see how far it goes.
" Everyone says it enables lot of cool things in vim
set nocompatible
" It shows what you are tying - Lets see how it works
set showcmd
filetype on
filetype indent on
filetype plugin on
set laststatus=2
" Syntax higlight stuff
syntax on
set grepprg=grep\ -nH\$*
" you like EMACS status line? looks like this enables the same.
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
" NERDTree - Enable on startup
autocmd VimEnter * NERDTree
" Make course to command window 
autocmd VimEnter * wincmd p
" This color looks cool as of now - some geek window look :-)
colo darkblue
" Tab completon stuff
set wildmenu
set wildmode=list:longest,full
" Enable Mouse support console
set backspace=2
" Incremental serach
set incsearch
" Highlight search
set hlsearch
" Don't know what it is
let g:clipbrdDefaultReg= '+'

let g:NERDTreeDirArrows=0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SECTION_PLUGIN_MINIBUFEXPLORER:
"
""let g:miniBufExplorerMoreThanOne=2
"let g:miniBufExplUseSingleClick = 1
"if (SYSTEMID == "WORK")
    ""let g:miniBufExplVSplit = 35
    ""let g:miniBufExplorerMoreThanOne=2
    "had this at 30 but caused problems, see instructions.
"    let g:miniBufExplMinSize=0
    "had this at 30 but if zero will use VSplit value instead.
    ""let g:miniBufExplMaxSize=0
    "Put explorer window on right side of the vim window
    ""let g:miniBufExplSplitBelow=1
"else
 "   let g:miniBufExplMapWindowNavVim = 1
  "  let g:miniBufExplMapWindowNavArrows = 1
   " let g:miniBufExplMapCTabSwitchBufs = 1
   " let g:miniBufExplModSelTarget = 1
   " let g:miniBufExplVSplit = 15
"endif

"autocmd BufRead,BufNew :call UMiniBufExplorer
"
"map <leader>u :TMiniBufExplorer<cr>
:nmap <C-S-E> <C-W>bgg  " Jump to top of minibufexpl window
"Removing remap of bp and bn since minibufexplorer allows options to enable
"ctl-tab / ctrl-shift-tab switching while keeping my place in the file
"the below remap isn't currently working for some reason anyway.
"noremap <C-S-~> :bp<cr>
"noremap <C-S-!> :bn<cr>

if has("cscope")
"        set csprg=/
        set csto=0
        set cst
        set nocsverb
        cs add cscope.out
        set csverb
        map <C-\> :cs find 0 <C-R>=expand("<cword>")<CR><CR>
        map <M-]> :cs find 3 <C-R>=expand("<cword>")<CR><CR>
"        map <C-O> :cs find 7 <C-R>=expand("<cword>")<CR><CR>
        map <F4>   :cs find 7 
        map <t_f4>   :cs find 7 
endif
"
