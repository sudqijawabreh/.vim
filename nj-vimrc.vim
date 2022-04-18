" Set tabs to 4 character
" See tabstop help for more info.
" Setting tabstop & softtabstop to the same value to avoid messy layout with mixed tabs & spaces.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set shiftround " When at 3 spaces and I hit >>, go to 4, not 5.
set list
set listchars=tab:▷▷⋮
set showmatch
set scrolloff=2
set mouse=a "sorry but it reasonable to use mouse sometimes
"set verbosefile=~/verbose.log
"set verbose=8
" neovide configs
let g:neovide_cursor_trail_length=0.0
let g:neovide_cursor_animation_length=0.0
let g:neovide_transparency=0.9

noremap <C-v> "*p
vnoremap <C-c> "*y
inoremap <C-v> <Esc>"*pi
cnoremap <C-v> <C-r>*
let mapleader = " "
nmap s ysiw
xmap s S
"map <S-s> <nop>
"nmap <S-s> <nop>

"insert new line without entering insert mode
"nmap <S-Enter> O<Esc>
"nmap <CR> o<Esc>

"move between splits freely
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"delete and select swap objects
"omap i, <Plug>(swap-textobject-i)
"xmap i, <Plug>(swap-textobject-i)
"omap a, <Plug>(swap-textobject-a)
"xmap a, <Plug>(swap-textobject-a)

nnoremap cv 0f=lC
nnoremap <leader>h :noh<cr>
"nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <leader>b :Telescope buffers<cr>
"vnoremap J :m '>+1<CR>gv=gv
"vnoremap K :m '<-2<CR>gv=gv
" paste last copied text, avoids pasting deleted text
noremap <leader>p "0p
noremap gy `[v`] 
nnoremap <leader>j `[
nnoremap <leader>l `]
command! BufOnly execute '%bdelete|edit #|normal `"'
set nofixeol

"nnoremap <leader>w :set nohlsearch<CR>/[A-Z]<CR>:set hlsearch<CR>
"nnoremap <C-Left> :call search('\<\<Bar>\u', 'bW')<CR>

"if has("windows") && ! has("unix")
""    set shell=C:\Windows\System32\wsl.ex
""    set shellpipe=|
""    set shellredir=>
""    set shellcmdflag=
""endif
if has('unix')
    let g:Home="/mnt/c/Users/Sudqi"
    cd /mnt/c/Users/Sudqi/Documents/r365
else
    "cd C:\Users\Sudqi\Documents\project\dc-project-management
    "cd ~
    "cd .\Documents\r365\
    "cd .\Documents\r365\r365forms\
    "cd .\Documents\r365\r365\
    let g:Home=$HOME
endif
" to allow recursive search using find
set path =**
" no need use <C-_> 
"nmap 0 ^
"set termguicolors what so ever
if (has("termguicolors"))
    set termguicolors

endif
"cd ~
" hidden buffer
"color slate
set hidden 
" Display line and column number in bottom ruler.
set ruler
" Display the line numbers.
"set number
set relativenumber
" Turn sounds off.
"set visualbell
" Shows a horizontal highlight on the line with the cursor.
"set cursorline
" Activate highlighting search pattern matches & incremental search.
" Incremental search means your cursor will jump to the first match as you
" type.
set hlsearch
set incsearch
set number
" idont know

" Activate case-insensitive & smart case search (if a capital letter is used
" in your search query, Vim will search case-sensitive).
set ignorecase 
set smartcase
"for save file shortcut
" Set wildchar visual completion awesomeness.
" This is enhanced command line completion and it rocks.
set wildmenu 
set wildmode=full

" Turning on line wrapping and line-break for easy text-file editing.
" Line-break wraps full words at the end of a sentence for readability.
set nowrap
hi SpellBad  gui=underline
set nospell
"set linebreak
"
"hide tool bars
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

syntax on
                                                

"no backup or swap
set nobackup
set nowritebackup
set noswapfile

"enable directx rednering
if has("gui_running")
    set guioptions=icpM
    if has('win32') || has('win64')
        "if (v:version == 704 && has("patch393")) || v:version > 704
        "endif
    endif
endif
"make ripgripp defualt for vim
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif
let g:ctrlp_max_files=0
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:50'
"change ctrlp match function using plugin
"let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
"ctrlp speed up
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_use_caching=1
"if executable('ag')
"    let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s'
"    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"    let g:ctrlp_use_caching=0
"endif
if executable('rg')
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
    let g:ctrlp_use_caching = 0
endif
"if exists("g:ctrl_user_command")
"    unlet g:ctrlp_user_command
"endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*
"nmap <leader>b :CtrlPBuffer<CR>

let g:gruvbox_contrast_dark = 'hard'
"set background=dark
" Enabled folding on indent level. That way it works on any code & html, xml
" etc. 
" Setting foldlevelstart ensures that for newly opened files folds are open
" unless they are 10 levels deep.
"set foldmethod=indent
"set foldenable
"set foldlevelstart=10
"set foldnestmax=10      " no more than 10 fold levels please
"map edit vimrc
nmap <leader>v :execute("tab drop ".g:Home."/vimfiles/nj-vimrc.vim")<CR>
" cd sets path to the path of te file in the current buffer.
"nnoremap cd :cd %:p:h
" Open the NERDTree on the path of the file in the current buffer.
"nnoremap t :NERDTree %:p:h
nnoremap cd :lcd %:p:h
nmap <leader>a :NERDTreeToggle<CR>
nmap ,n :NERDTreeFind<CR>
"let NERDTreeDirArrowExpandable = '+'
"let NERDTreeDirArrowCollapsible = '~'
noremap <leader>s :source %<CR> :noh<CR>
"mapping for Gundo plugin
"nnoremap <F5> :GundoToggle<CR>
"mapping for undo toggle
nnoremap <F5> :UndotreeToggle<cr>
let g:undotree_WindowLayout=2
" set directory to server"
"nnoremap <leader>c :let @*=@e<CR>
"map for indentation
vmap < <gv
vmap > >gv
"find number of occurrences
map ,* *<C-O>:%s///gn<CR>
"window mappin
"map + <C-w>+
"map - <C-w>-
"for power line
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols = 'fancy'
"delimeter
let delimitMate_expand_cr = 1
set backspace=2
set nocompatible              " be iMproved, required
filetype off                  " required
"ultnippet
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
 
"Add branch name at the beginning of the commit message
augroup Commit
    autocmd FileType gitcommit nnoremap gb :put!=fugitive#head()<cr>
augroup END

augroup vimscript
    autocmd!
    if has('win32')
        "open plugin in the browser
        autocmd FileType vim xnoremap <leader>gx y:!start https://github.com/<c-r>"<cr>
        autocmd FileType vim nnoremap <leader>gx 0vi'y:!start https://github.com/<c-r>"<cr>
    endif
augroup END

augroup Spell
    autocmd!
    autocmd FileType gitcommit setlocal spell
    " Force to use underline for spell check results
    autocmd FileType gitcommit hi SpellBad  gui=underline    
    autocmd FileType gitcommit setlocal complete+=kspell
    autocmd FileType todo setlocal spell
    autocmd FileType todo setlocal complete+=kspell
augroup END
augroup lsp
    autocmd!
    autocmd FileType fsharp nmap gr <Plug>(lcn-references)
    autocmd FileType fsharp nmap <F4> <Plug>(lcn-menu)
    "autocmd FileType fsharp nmap <buffer> <silent>K <Plug>(lcn-hover)
    autocmd FileType fsharp nmap <buffer> <silent> gd <Plug>(lcn-definition)
    autocmd FileType fsharp xnoremap s* <ESC>`>a*)<ESC>`<i(*<ESC> " multiple line comment for fsharp
    autocmd FileType fsharp nnoremap ds* /\*)<cr>xx?(\*<cr>xx "delete multiple line comment
augroup END

" add builtin plugin to fliter quickfix list
packadd cfilter

call plug#begin(g:Home.'/.vimfiles/plugged')
" vim colorschemes
"Plug 'tomasiser/vim-code-dark'
"Plug 'lifepillar/vim-solarized8'
"Plug 'joshdick/onedark.vim'
"Plug 'folke/tokyonight.nvim'
"Plug 'morhetz/gruvbox'
"Plug 'tomasiser/vim-code-dark'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'rakr/vim-one'
"Plug 'jacoborus/tender.vim'
"Plug 'altercation/vim-colors-solarized'
"Plug 'wuelnerdotexe/vim-enfocado'
"Plug 'sonph/onehalf', { 'rtp': 'vim' }
"Plug 'arcticicestudio/nord-vim'
Plug 'jceb/vim-textobj-uri'
Plug 'EdenEast/nightfox.nvim'
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
"--------------------
"query db
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
"--------------------
Plug 'bps/vim-textobj-python'
Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
Plug 'jceb/vim-textobj-uri'
"Plug 'Raimondi/delimitMate'
"Plug 'OrangeT/vim-csharp'
"Plug 'terryma/vim-expand-region'
Plug '9mm/vim-closer'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'tommcdo/vim-exchange'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
"Plug 'vim-expand-region'
Plug 'OmniSharp/omnisharp-vim'
Plug 'aserebryakov/vim-todo-lists'
"Plug 'vim-latex/vim-latex'
"Plug 'Valloric/YouCompleteMe'
"Plug 'fsharp/vim-fsharp'
Plug 'tpope/vim-rsi'
"Plug 'taku-o/vim-zoom'
Plug 'tommcdo/vim-fubitive'
Plug 'machakann/vim-swap'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
"Plug 'shmup/vim-sql-syntax'
Plug 'tpope/vim-unimpaired'
Plug 'sgur/vim-textobj-parameter'
Plug 'sudqijawabreh/vim-sendtoterm'
"Plug 'ThePrimeagen/vim-be-good'
" not needed in nvim 0.6
Plug 'machakann/vim-highlightedyank'
" using grep inside vim instead
"Plug 'dyng/ctrlsf.vim'
"Plug 'skamsie/vim-lineletters'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'cljoly/telescope-repo.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'michaeljsmith/vim-indent-object',
Plug 'AndrewRadev/diffurcate.vim',
Plug 'dense-analysis/ale'
"Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
"Plug 'wookayin/fzf-ripgrep.vim'
Plug 'godlygeek/tabular'
"Plug 'puremourning/vimspector'
" can be used to edit text in the browser
"Plug 'subnut/nvim-ghost.nvim', {'do': ':call nvim_ghost#installer#install()'}
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'powershell -executionpolicy bypass -File install.ps1',
    \ }
Plug 'ionide/Ionide-vim', {
     \ 'do':  'powershell -ExecutionPolicy Unrestricted .\install.ps1',
     \}

call plug#end()
nmap <silent>,, <Plug>LineLetters
vmap <silent>,, <Plug>LineLetters
let g:coc_global_extensions=[ 'coc-tsserver']
let g:coc_sources_disable_map = { 'cs': ['cs-2', 'cs-3', 'cs-4'] }
command! -bang -nargs=? -complete=dir Files
        \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'cat {}']}, <bang>0)

" Put your non-
"s
"Ctrl s h
" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command! -nargs=0 -bar Update if &modified 
            \|    if empty(bufname('%'))
                \|        browse confirm write
                \|    else
                    \|        confirm write
                    \|    endif
                    \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <c-s> <c-o>:Update<CR>

"for wrapping
nmap j gj
nmap k gk
"ctags
"":let g:easytags_async= 1
"escap to jk
":imap jk <Esc>
":imap kj <Esc>
if has("gui_running")
    " Set a nicer font.
    ""  set guifont=Inconsolata\ for\ Powerline:h12
    set guifont=Ubuntu\ Mono\ derivative\ Powerline:h10
    "set guifont=Consolas:h10:cDEFAULT
    " Hide the toolbar.
    set guioptions-=T
endif
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

 function! OpenPowershell()
    try
        if bufexists(bufname("term://*powershell")) > 0 
            execute "sb term://*powershell"
        else
            execute 'sp | term powershell'
        endif
    catch /^Vim\%((\a\+)\)\=:E37/   
            execute "BufOnly"
            execute "bd"
    endtry
endfunction

" a function to change fold text to include text in the last line
function! MyFoldText()
    let nblines = v:foldend - v:foldstart + 1
    let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
    "let line = getline(v:foldstart)
    let line = getline(v:foldend)
    "let comment = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
    "let expansionString = repeat(".", w - strwidth(nblines.comment.'"'))
    let txt = '"' . line . '....' . nblines
    return txt
endfunction
set foldtext=MyFoldText()

" copy macthed search to clippored
"http://vim.wikia.com/wiki/Copy_search_matches
function! CopyMatches(reg)
    let hits = []
    %s//\=len(add(hits, submatch(0))) ? submatch(0) : ''/gne
    let reg = empty(a:reg) ? '+' : a:reg
    execute 'let @'.reg.' = join(hits, "\n") . "\n"'
endfunction
command! -register CopyMatches call CopyMatches(<q-reg>)" Set color scheme according to current time of day.

if has("gui_running")
    "colorscheme solarized
    "colorscheme gruvbox
    "colorscheme onedark
    colorscheme nightfox
else
    "colorscheme solarized8
    "colorscheme gruvbox
    "colorscheme onedark
    colorscheme nightfox
endif
if has('win32')
  nmap ,cs :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
  nmap ,cl :let @*=substitute(expand("%:p:h"), "/", "\\", "g")<CR>
  nmap <leader>cd :redir @a \| pwd \| redir END \| let @*=@a<CR>
  nmap <leader>cf :let @*=substitute(expand("%:t"), "/", "\\", "g")<CR>

  " This will copy the path in 8.3 short format, for DOS and Windows 9x
  nmap ,c8 :let @*=substitute(expand("%:p:8"), "/", "\\", "g")<CR>
else
  nmap ,cs :let @*=expand("%")<CR>
  nmap ,cl :let @*=expand("%:p")<CR>
endif
let g:highlightedyank_highlight_duration = 500
"let g:lightline = { 'colorscheme': 'tendi' }
let g:lightline = { 'colorscheme': 'nightfox' }
"let g:VimTodoListsDatesEnabled = 0
let g:VimTodoListsMoveItems = 0
"emacs binding rsi plugin
"not needed you can use <C-w> 
imap <C-BS> <M-BS>

"generate GUID
nmap <leader>gu :read !python -c "import uuid;print(str(uuid.uuid4()).upper())"<cr>vil"*ydd
nmap <leader>gb :Git blame<CR>
xmap <leader>gb :Git blame<CR>
nmap <leader>gl :Git! log -100 --pretty="%h \| %d %s (%cr) [%an]" <CR>
nmap <leader>gp :Git! push origin<CR>
nmap <leader>gs :Git<CR>
nmap <leader>gd :Gdiffsplit<CR>

"Run the current line as if it were a command. Often more convenient than q: when experimenting.
"nnoremap <leader>e :exe getline(line('.'))<cr>
"nnoremap <leader>f 0f(h

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" terminal mode mappings
tnoremap <silent> <ESC> <C-\><C-n>
tnoremap <silent> <c-j> <C-\><c-n><c-w>j

 "nnoremap <C-p> <cmd>Telescope find_files<cr>
" show terminal buffer if already opend or create a new one
nnoremap <leader>t :call OpenPowershell()<cr>
"nnoremap <leader>x :sb term<cr>
"nnoremap <Leader>f :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>"
"nnoremap <Leader>f :lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({previewer = false}))<cr>
nnoremap <leader>f <cmd>Telescope find_files previewer=false<cr>
nnoremap <leader>cp <cmd>Telescope project<cr>
"nnoremap <leader>fr :lua require'telescope.builtin'.resume{}<CR>
"
"beautify json
vnoremap =j :!python -m json.tool<CR>

"let g:node_client_debug = 1
"let $NODE_CLIENT_LOG_FILE = '~/sudqilog.txt'
if g:vsvim == 0
    xmap <leader>r  <Plug>(SendToTerm)
    nmap <leader>r  <Plug>(SendToTerm)
    omap <leader>r  <Plug>(SendToTerm)
    nmap <leader>rr  <Plug>(SendToTermLine)
    nmap <leader>ct :execute "SendTextToTerm cd " . getcwd() <cr>
    nnoremap <s-y> y$

    augroup omnisharp_commands
    autocmd!

    " Show type information automatically when the cursor stops moving.
    " Note that the type is echoed to the Vim command line, and will overwrite
    " any other messages in this space including e.g. ALE linting messages.
    "autocmd CursorHold *.cs OmniSharpTypeLookup
    autocmd FileType cs nmap <silent> <buffer> K <Plug>(omnisharp_type_lookup)

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
    autocmd FileType cs nmap <silent> <buffer> gr <Plug>(omnisharp_find_usages)
    autocmd FileType cs nmap <silent> <buffer> gi <Plug>(omnisharp_find_implementations)
    autocmd FileType cs nmap <silent> <buffer> gp <Plug>(omnisharp_preview_definition)
    "autocmd FileType cs nmap <silent> <buffer> <Leader>ospi <Plug>(omnisharp_preview_implementations)
    "autocmd FileType cs nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_type_lookup)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osd <Plug>(omnisharp_documentation)
    "autocmd FileType cs nmap <silent> <buffer> <Leader>osfs <Plug>(omnisharp_find_symbol)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osfx <Plug>(omnisharp_fix_usings)
    autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
    autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)

    " Navigate up and down by method/property/field
    autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
    autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
    " Find all code errors/warnings for the current solution and populate the quickfix window
    autocmd FileType cs nmap <silent> <buffer> <Leader>osgcc <Plug>(omnisharp_global_code_check)
    " Contextual code actions (uses fzf, vim-clap, CtrlP or unite.vim selector when available)
    autocmd FileType cs nmap <silent> <buffer> <leader>oa <Plug>(omnisharp_code_actions)
    autocmd FileType cs xmap <silent> <buffer> <leader>oa <Plug>(omnisharp_code_actions)
    " Repeat the last code action performed (does not use a selector)
    autocmd FileType cs nmap <silent> <buffer> <leader>os. <Plug>(omnisharp_code_action_repeat)
    autocmd FileType cs xmap <silent> <buffer> <leader>os. <Plug>(omnisharp_code_action_repeat)
    autocmd FileType cs nmap <silent> <buffer> <leader>oh <Plug>(omnisharp_highlight)

    autocmd FileType cs nmap <silent> <buffer> <Leader>os= <Plug>(omnisharp_code_format)

    autocmd FileType cs nmap <silent> <buffer> <Leader>rr <Plug>(omnisharp_rename)

    autocmd FileType cs nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
    "autocmd FileType cs nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
    autocmd FileType cs nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_start_server)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osp <Plug>(omnisharp_stop_server)
    augroup END

    nmap <m-k> :cprev<cr>
    nmap <m-j> :cnext<cr>

    xnoremap g/ y: grep! <C-r>" \| copen <cr>

    "open current file folder
    nnoremap <silent>gof : !explorer %:h<CR>
    xnoremap <leader>gf y: Find <C-r>"<CR> 

    " start open program or image under the cursor
    nnoremap mm  :lcd %:p:h<CR> :!start <cfile><CR>
    xnoremap mm  y:!start "" "<c-r>"" <cr>
    
    "go to interface
    nmap <leader>gi gg/class<CR><leader>h$gd
    "append current method to interface
    nmap <leader>gai yy<leader>gij%kpdwA;<C-o>O<Esc>
    "update signature in the interface
    nmap <leader>gui 0f(h"ayiwvily<leader>gi/<C-R>a<CR>vilp^dwA;<Esc><leader>h0f(h
    "go to method definition in the interface
    nmap <leader>gmd 0f(h"ayiwvily<leader>gi/<C-R>a<CR><leader>h
    "nmap <leader>gum vilhy0f(hgi0wv$hp

    xnoremap s> <ESC>`<i<<ESC>`>la><ESC>
    xnoremap s< <ESC>`>a><ESC>`<i<<ESC>
    " Set internal encoding of vim, not needed on neovim, since coc.nvim using some
    " unicode characters in the file autoload/float.vim
    set encoding=utf-8

    " TextEdit might fail if hidden is not set.
    set hidden

    " Some servers have issues with backup files, see #649.
    set nobackup
    set nowritebackup

    " Give more space for displaying messages.
    set cmdheight=2

    " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
    " delays and poor user experience.
    set updatetime=300

    " Don't pass messages to |ins-completion-menu|.
    set shortmess+=c

    " Always show the signcolumn, otherwise it would shift the text each time
    " diagnostics appear/become resolved.
    if has("patch-8.1.1564")
    " Recently vim can merge signcolumn and number column into one
    set signcolumn=number
    else
    set signcolumn=yes
    endif


    "vnoremap <leader>j :!js-beautify
endif
"let g:ycm_auto_start_csharp_server = 1
if g:vsvim == 1
    cd C:\Users\MSI\Documents\r365\r365\Application\
    nnoremap gi :vsc Edit.GoToImplementation<CR>
    "map gr :vsc Edit.FindAllReferences<CR>
    map gr :vsc Edit.FindAllReferences<CR>
    map gp :vsc Edit.PeekDefinition<CR>
    map g; `.
    nmap <leader>f :vsc Edit.GoToAll<CR>
    map <c-s> :w<CR>

    vnoremap // y/\V<C-R>"<CR>
    "go to interface
    "nmap <leader>gi gg/class<CR>$gd<leader>h
    "noremap <leader>last /<C-R>s<CR>

    "use macros instead of mapping cause visual studio bug when going to
    "implementation
    "append current method to interface
    "let @i = 'yy,gij%PdawA;Oj0f('
    "noremap <leader>gai @i

    "update signature in the interface
    "let @e = '0f(h"syiwvily,gi,lastvilp0dwA;0f(h,h'
    "noremap <leader>gui @e

    "go to method definition in the interface
    "let @g = '0f(h"syiwvily,gi,last,h'
    "noremap <leader>gmd @g

    "nnoremap <C-k> :vsc Edit.MoveControlUP<cr>
    "nnoremap <C-j> :vsc Edit.MoveControlDown<cr>
    nnoremap <C-e> :vsc View.ErrorList<cr>
    nnoremap <C-o> :vsc View.NavigateBackward<cr>
    nnoremap <C-i> :vsc View.NavigateForward<cr>
    " break out of the tyranny of text! Navigate by method
    nnoremap ]m :vsc Edit.NextMethod<CR>
    nnoremap [m :vsc Edit.PreviousMethod<CR>
    nnoremap <leader>M :csx methods<CR>
    "
    nnoremap rr :vsc Refactor.Rename<cr>
    "
    " " jump between compilation errors
    nnoremap <leader>e :vsc View.NextError<cr>
    nnoremap <leader>E :vsc View.PreviousError<cr>
    "
    " " testing and debugging
    nnoremap <leader>b :vsc Debug.ToggleBreakpoint<cr>
    nnoremap <leader>d :vsc Debug.Start<cr>
    nnoremap sl :vsc Debug.StepOver<cr>
    nnoremap si :vsc Debug.StepInto<cr>
    nnoremap so :vsc Debug.StepInto<cr>
    nnoremap <leader>r :vsc TestExplorer.RunAllTestsInContext<cr>
    nnoremap <leader>R :vsc TestExplorer.DebugAllTestsInContext<cr>

    nnoremap <C-_> :vsc Edit.CommentSelection<cr>
    "nnoremap W :vsc Edit.SubwordNext<cr>
    "nnoremap B :vsc Edit.SubwordPrevious<cr>
    nnoremap dc :vsc Edit.SubwordDeleteNext<cr>
    nnoremap cc :vsc Edit.SubwordDeleteNext<cr>i

    nnoremap gt :vsc Window.NextTab<cr>
    nnoremap gT :vsc Window.PreviousTab<cr>
    "
    xnoremap $ $h

    "select function parameters
    "vnoremap i, /[,)]<cr>ho?[,(]<cr>l<ESC>:nohl<cr>gv
    "vnoremap a, /[,)]<cr>ho?[,(]<cr><ESC>:nohl<cr>gv
    "nnoremap ci, /[,)]<cr>hvo?[,(]<cr>l<ESC>:nohl<cr>gvc
    "nnoremap di, /[,)]<cr>hvo?[,(]<cr>l<ESC>:nohl<cr>gvd

    nnoremap [c :vsc Diff.PreviousDifference<cr>
    nnoremap ]c :vsc Diff.NextDifference<cr>
    vnoremap i* /\*\/<cr>ho?\/\*<cr>ll<ESC>:nohl<cr>gv
    vnoremap a* /\*\/<cr>lo?\/\*<cr><ESC>:nohl<cr>gv

    "select line without new line and indentation
    vnoremap il ^og_
    "select line without new line
    vnoremap al 0o$h

    nnoremap <leader>ds :vsc Diff.SideBySideView<cr>
    nnoremap <leader>dh :vsc Diff.LeftOnlyView<cr>
    nnoremap <leader>di :vsc Diff.InlineView<cr>
    nnoremap <leader>dl :vsc Diff.RightOnlyView<cr>

    nnoremap <leader>gc :vsc Team.Git.GoToGitChanges<cr>
    nnoremap <leader>gb :vsc Team.Git.Annotate<cr>
    nnoremap <leader>c :vsc Team.Git.CompareWithUnmodified<cr>

    nnoremap <leader>i V'[']=<C-[>

    set virtualedit=onemore

    "noremap <leader>f gg=G<C-o><C-o>

    vnoremap J :vsc Edit.MoveSelectedLinesDown<cr>
    vnoremap K :vsc Edit.MoveSelectedLinesUp<cr>

    nmap s <nop>
    xnoremap s( <ESC>`>i)<ESC>`<i(<ESC>
    xnoremap s) <ESC>`<i(<ESC>`>a)<ESC>
    xnoremap sb <ESC>`>i)<ESC>`<i(<ESC>
    xnoremap s" <ESC>`>i"<ESC>`<i"<ESC>
    xnoremap s' <ESC>`>i'<ESC>`<i'<ESC>
    xnoremap s> <ESC>`<i<<ESC>`>a><ESC>
    xnoremap s< <ESC>`>i><ESC>`<i<<ESC>
    xnoremap s[ <ESC>`>i]<ESC>`<i[<ESC>
    xnoremap s{ <ESC>`>a<cr>}<ESC>`<i{<cr><ESC>vaB=
    xnoremap s} <ESC>`>a<cr>}<ESC>`<i{<cr><ESC>vaB=
    xnoremap sB <ESC>`>a<cr>}<ESC>`<i{<cr><ESC>vaB=

    nmap s( viws(
    nmap s) viws)
    nmap sb viwsb
    nmap s" viws"
    nmap s' viws'
    nmap s< viws<
    nmap s> viws>
    nmap s[ viws[
    nmap s{ viws{
    nmap s} viws}
    nmap sB viwsB

    nmap ss( ^v$s(
    nmap ss) ^v$s(
    nmap ssb ^v$s(
    nmap ss" ^v$s"
    nmap ss' ^v$s'
    nmap ss< ^v$s>
    nmap ss> ^v$s>
    nmap ss[ ^v$s[
    nmap ss{ ^v$s{
    nmap ss} ^v$s{
    nmap ssB ^v$s{
    nmap ss* ^v$s*

    nnoremap ds( vi("adva(d"aP`[
    nnoremap ds) vi("adva(d"aP
    nnoremap dsb vi("adva(d"aP
    nnoremap ds[ vi[dvhp
    nnoremap ds{ vi{"adva{d"aPv`[`]=
    nnoremap ds} vi{"adva{d"aPv`[`]=
    nnoremap dsB vi{"adva{d"aPv`[`]=
    nnoremap ds< vi<dvhp`[
    nnoremap ds> vi<dvhp
    nnoremap ds" vi"dvhp
    nnoremap ds' vi'dvhp

    nnoremap cs"' vi"oh<Esc>msvi"l<Esc>cl'<Esc>`scl'<Esc>
    nnoremap cs'" vi'oh<Esc>msvi'l<Esc>cl"<Esc>`scl"<Esc>
    xnoremap sc <ESC>`>i*)<ESC>`<i(*<ESC>
    nnoremap dc /\*)<cr>xx?(\*<cr>xx
    xnoremap s* <ESC>`>i*/<ESC>`<i/*<ESC>
    nnoremap ds* /\*\/<cr>xx?\/\*<cr>xx

    nmap ,cs :vsc File.CopyFullPath<cr>
    "Copy full path to clipboard then escap backslash and finally pass it to
    "powershell to split it then copy it back to clipboard
    nmap ,cf :vsc File.CopyFullPath<cr>o<C-r>*<Esc>:s/\\/\\\\/g<CR>vil"*ddd :read !powershell -Command Split-Path <C-r>* -leaf<cr>jvil"*ydd

    " And map goToNextLocaion to <c-p> in visual studio to make it work in
    " the symbols window
    nnoremap <C-n> :vsc Edit.GoToNextLocation<CR>
    nnoremap <C-p> :vsc Edit.GoToPrevLocation<CR>
    xnoremap <C-n> <Esc>:vsc Edit.GoToNextLocation<CR>
    xnoremap <C-p> <Esc>:vsc Edit.GoToPrevLocation<CR>

    inoremap <C-n> <C-o>:vsc Edit.CompleteWord<CR>
    inoremap <C-p> <Esc>:vsc Edit.GoToPrevLocation<CR>

    nnoremap gof :vsc File.OpenContainingFolder<cr>
    nnoremap <S-k> :vsc Edit.QuickInfo<CR>
    nnoremap <leader>; :vsc SolutionExplorer.SyncWithActiveDocument<CR>
    nnoremap <C-W>o :vsc File.CloseAllButThis<CR>

    nnoremap dai          :csx IndentObject dai<CR>
    nnoremap daI          :csx IndentObject daI<CR>
    nnoremap dii          :csx IndentObject dii<CR>

    nnoremap yai          :csx IndentObject yai<CR>
    nnoremap yaI          :csx IndentObject yaI<CR>
    nnoremap yii          :csx IndentObject yii<CR>

    nnoremap cai          :csx IndentObject cai<CR>
    nnoremap caI          :csx IndentObject caI<CR>
    nnoremap cii          :csx IndentObject cii<CR>

    vnoremap ai           :csx IndentObject vai<CR>
    vnoremap aI           :csx IndentObject vaI<CR>
    vnoremap ii           :csx IndentObject vii<CR>

    vnoremap i,           :csx ParamObject vi,<CR>
    vnoremap a,           :csx ParamObject va,<CR>
    nnoremap di,          :csx ParamObject di,<CR>
    nnoremap yi,          :csx ParamObject yi,<CR>

    vnoremap im           :csx MethodTextObject vim<CR>
    vnoremap am           :csx MethodTextObject vam<CR>
    nnoremap dim          :csx MethodTextObject dim<CR>
    nnoremap yim          :csx MethodTextObject yim<CR>

endif

" OmniSharp: {{{
let g:OmniSharp_popup_position = 'peek'
if has('nvim')
  let g:OmniSharp_popup_options = {
  \ 'winhl': 'Normal:NormalFloat'
  \}
else
  let g:OmniSharp_popup_options = {
  \ 'highlight': 'Normal',
  \ 'padding': [1, 0, 0, 0],
  \ 'border': [1]
  \}
endif
let g:OmniSharp_popup_mappings = {
\ 'sigNext': '<C-n>',
\ 'sigPrev': '<C-p>',
\ 'pageDown': ['<C-f>', '<PageDown>'],
\ 'pageUp': ['<C-b>', '<PageUp>']
\}


let g:OmniSharp_highlight_groups = {
\ 'ExcludedCode': 'NonText'
\}
" }}}
let g:OmniSharp_highlight_types = 0
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_start_server = 0

lua << EOF
require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "vertical",
    file_ignore_patterns = {},
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    path_display = {},
    --set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    preview = {
        treesitter = false,
    },
   path_display = {
       'shorten',
       'absolute',
     },
    mappings = {
        i = {
             ["<c-j>"] = require("telescope.actions").move_selection_next,
            -- Right hand side can also be the name of the action as a string
            ["<c-k>"] = require("telescope.actions").move_selection_previous
        }
    },
    require('telescope').setup {
        extensions = {
            fzy_native = {
                override_generic_sorter = false,
                override_file_sorter = true,
            }
        }
    }
  }
}
require('telescope').load_extension('fzy_native')
require'telescope'.load_extension'repo'
require'telescope'.load_extension('project')
EOF

"function! ClearTerminal()
"  let s:scroll_value = &scrollback
"  set scrollback=1
"  let &g:scrollback=1
"  echo &scrollback
"  call feedkeys("\i")
"  call feedkeys("clear\<CR>")
"  call feedkeys("\<C-\>\<C-n>")
"  call feedkeys("\i")
"  sleep 10m
"  let &scrollback=s:scroll_value
"endfunction
"
"function! ClearPythonTerminal()
"  set scrollback = 1
"  let &g:scrollback=1
"  echo &scrollback
"  call feedkeys("\i")
"  call feedkeys("import os\<CR>")
"  call feedkeys("x = os.system('cls')\<CR>")
"  call feedkeys("\<C-\>\<C-n>")
"  call feedkeys("\i")
"  sleep 10m
" " let &scrollback=s:scroll_value
"endfunction
"
"tnoremap <C-\><C-l> <C-\><C-n>:call ClearTerminal()<cr>
"tnoremap <C-\><C-p> <C-\><C-n>:call ClearPythonTerminal()<cr>
lua <<EOF
--require'nvim-treesitter.configs'.setup {
--   indent = {
--        enable = false
--   },
--  highlight = {
--    enable = false,
--    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
--    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
--    -- Using this option may slow down your editor, and you may see some duplicate highlights.
--    -- Instead of true it can also be a list of languages
--    additional_vim_regex_highlighting = false,
--  },
--}
EOF
