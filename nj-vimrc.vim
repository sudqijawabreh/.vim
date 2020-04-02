let mapleader = ","
if vsvim
    cd C:\Users\Sudqi\Documents\r365\r365\Application\
    nnoremap gi :vsc Edit.GoToImplementation<CR>
    "map gr :vsc Edit.FindAllReferences<CR>
    map gr :vsc Edit.FindAllReferences<CR>
    map gp :vsc Edit.PeekDefinition<CR>
    map g; `.

    "nnoremap <C-k> :vsc Edit.MoveControlUP<cr>
    "nnoremap <C-j> :vsc Edit.MoveControlDown<cr>
    nnoremap <C-o> :vsc View.NavigateBackward<cr>
    nnoremap <C-i> :vsc View.NavigateForward<cr>
    " break out of the tyranny of text! Navigate by method
    nnoremap <leader>n :vsc Edit.NextMethod<CR>
    nnoremap <leader>m :vsc Edit.PreviousMethod<CR>
    nnoremap <leader>M :csx methods<CR>
    "
    nnoremap R :vsc Refactor.Rename<cr>
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
    nnoremap W :vsc Edit.SubwordNext<cr>
    nnoremap B :vsc Edit.SubwordPrevious<cr>
    nnoremap dc :vsc Edit.SubwordDeleteNext<cr>
    nnoremap cc :vsc Edit.SubwordDeleteNext<cr>i

    nnoremap gt :vsc Window.NextTab<cr>
    nnoremap gT :vsc Window.PreviousTab<cr>
    "
    " " open the change parameter window, a bit fake because it's not a
    " text-object
    nnoremap cia :vsc Refactor.ReorderParameters<cr>
    xnoremap $ $h

    "select funciton paramters
    vnoremap i, /[,)]<cr>ho?[,(]<cr>l<ESC>:nohl<cr>gv
    vnoremap a, /[,)]<cr>ho?[,(]<cr><ESC>:nohl<cr>gv
    nnoremap ci, /[,)]<cr>hvo?[,(]<cr>l<ESC>:nohl<cr>gvc
    nnoremap di, /[,)]<cr>hvo?[,(]<cr>l<ESC>:nohl<cr>gvd

    set virtualedit=onemore

    noremap <leader>f gg=G<C-o><C-o>
    "nnoremap gt `[v`]
endif
"map <S-s> <nop>
"nmap <S-s> <nop>
nmap s <nop>
xnoremap s( <ESC>`>i)<ESC>`<i(<ESC>
xnoremap s) <ESC>`>i)<ESC>`<i(<ESC>
xnoremap sb <ESC>`>i)<ESC>`<i(<ESC>
xnoremap s" <ESC>`>i"<ESC>`<i"<ESC>
xnoremap s' <ESC>`>i'<ESC>`<i'<ESC>
xnoremap s> <ESC>`>i><ESC>`<i<<ESC>
xnoremap s< <ESC>`>i><ESC>`<i<<ESC>
xnoremap s[ <ESC>`>i]<ESC>`<i[<ESC>
xnoremap s{ <ESC>`>a<cr>}<ESC>`<i{<cr><ESC>vaB=
xnoremap s} <ESC>`>a<cr>}<ESC>`<i{<cr><ESC>vaB=
xnoremap sB <ESC>`>a<cr>}<ESC>`<i{<cr><ESC>vaB=
nnoremap <leader>; A;<ESC>

nnoremap s( ciw(<C-r>")<Esc>
nnoremap s) ciw(<C-r>")<Esc>
nnoremap sb ciw(<C-r>")<Esc>
nnoremap s" ciw"<C-r>""<Esc>
nnoremap s' ciw'<C-r>"'<Esc>
nnoremap s< ciw<<C-r>"><Esc>
nnoremap s> ciw<<C-r>"><Esc>
nnoremap s[ ciw[<C-r>"]<Esc>
nnoremap s{ ciw{<C-r>"}<Esc>
nnoremap s} ciw{<C-r>"}<Esc>
nnoremap sB ciw{<C-r>"}<Esc>

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

nnoremap ds( vi("adva(d"aP
nnoremap ds) vi("adva(d"aP
nnoremap dsb vi("adva(d"aP
nnoremap ds[ vi[dvhp
nnoremap ds{ vi{"adva{d"aPv`[`]=
nnoremap ds} vi{"adva{d"aPv`[`]=
nnoremap dsB vi{"adva{d"aPv`[`]=
nnoremap ds< vi<dvhp
nnoremap ds> vi<dvhp
nnoremap ds" vi"dvhp
nnoremap ds' vi'dvhp

nnoremap cs"' vi"oh<Esc>msvi"l<Esc>cl'<Esc>`scl'<Esc>
nnoremap cs'" vi'oh<Esc>msvi'l<Esc>cl"<Esc>`scl"<Esc>
xnoremap s* <ESC>`>i*/<ESC>`<i/*<ESC>
nnoremap ds* /\*\/<cr>xx?\/\*<cr>xx

"insert new line without entering insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

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
"nnoremap <leader>w :set nohlsearch<CR>/[A-Z]<CR>:set hlsearch<CR>
"nnoremap <C-Left> :call search('\<\<Bar>\u', 'bW')<CR>

"if has("windows") && ! has("unix")
""    set shell=C:\Windows\System32\wsl.exe
""    set shellpipe=|
""    set shellredir=>
""    set shellcmdflag=
""endif
if has('unix')
    let g:Home="/mnt/c/Users/Sudqi"
    cd /mnt/c/Users/Sudqi/Documents/r365
else
    "cd C:\Users\Sudqi\Documents\project\dc-project-management
    cd ~
    cd .\Documents\r365\
    "cd .\Documents\r365\r365forms\
    "cd .\Documents\r365\r365\
    let g:Home=$HOME
endif
" to allow recursive search using find
set path =**
nmap 0 ^
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
set visualbell
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
"set wrap
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
        set relativenumber 
        "set renderoptions=type:directx,level:0.75,gamma:1.25,contrast:0.25,
        ""            \geom:1,renmode:5,taamode:1
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
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
"ctrlp speed up
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_use_caching=1
"if executable('ag')
"    "let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s'
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
" set spelling true
set spell

" Set tabs to 4 characters and expand to spaces, activate smart indentation.
" See tabstop help for more info.
" Setting tabstop & softtabstop to the same value to avoid messy layout with mixed tabs & spaces.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set smarttab
set autoindent
set shiftround " When at 3 spaces and I hit >>, go to 4, not 5.
" Enabled folding on indent level. That way it works on any code & html, xml
" etc. 
" Setting foldlevelstart ensures that for newly opened files folds are open
" unless they are 10 levels deep.
set foldmethod=indent
set foldenable
set foldlevelstart=10
set foldnestmax=10      " no more than 10 fold levels please
"eclim
let g:EclimCompletionMethod = 'omnifunc'
"map edit vimrc
nmap <leader>v :execute("tabedit ".g:Home."/vimfiles/nj-vimrc.vim")<CR>
" cd sets path to the path of te file in the current buffer.
"nnoremap cd :cd %:p:h
" Open the NERDTree on the path of the file in the current buffer.
"nnoremap t :NERDTree %:p:h
nnoremap cd :lcd %:p:h
nmap <leader>a :NERDTreeToggle<CR>
noremap <leader>s :source %<CR>
"mapping for Gundo plugin
"nnoremap <F5> :GundoToggle<CR>
"mapping for undo toggle
nnoremap <F5> :UndotreeToggle<cr>
" set directory to server"
"nnoremap <leader>c :let @*=@e<CR>
"map for indentation
vmap < <gv
vmap > >gv
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

"color Monokai

call plug#begin(g:Home.'/.vim/plugged')
"Plug 'noah/vim256-color'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'tommcdo/vim-exchange'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-repeat'
Plug 'jacoborus/tender.vim'
Plug 'vim-airline/vim-airline'
"Plug 'vim-expand-region'
"Plug 'OmniSharp/omnisharp-vim'
Plug 'aserebryakov/vim-todo-lists'
"Plug 'vim-latex/vim-latex'
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-shell'
"Plug 'xolox/vim-easytags'
"Plug 'Syntastic'
"Plug 'Valloric/YouCompleteMe'
"Plug 'fsharp/vim-fsharp'
Plug 'altercation/vim-colors-solarized'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'tpope/vim-rsi'
Plug 'taku-o/vim-zoom'
Plug 'tomasiser/vim-code-dark'
Plug 'vim/killersheep'
"Plug 'neoclide/coc.nvim'
" vim colorschemes
Plug 'lifepillar/vim-solarized8'
Plug 'arcticicestudio/nord-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'tommcdo/vim-fubitive'
Plug 'machakann/vim-swap'
Plug 'psliwka/vim-smoothie'
"Plug 'terryma/vim-multiple-cursors'

call plug#end()

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
:inoremap <c-s> <c-o>:Update<CR>

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
    "set guifont=Ubuntu\ Mono\ derivative\ Powerline:h12
    set guifont=Consolas:h10:cDEFAULT
    " Hide the toolbar.
    set guioptions-=T
endif
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup




" Change the color scheme from a list of color scheme names.
" Version 2010-09-12 from http://vim.wikia.com/wiki/VimTip341
" Press key:
"   F8                next scheme
"   Shift-F8          previous scheme
"   Alt-F8            random scheme
" Set the list of color schemes used by the above (default is 'all'):
"   :SetColors all              (all $VIMRUNTIME/colors/*.vim)
"   :SetColors my               (names built into script)
"   :SetColors blue slate ron   (these schemes)
"   :SetColors                  (display current scheme names)
" Set the current color scheme based on time of day:
"   :SetColors now
if v:version < 700 || exists('loaded_setcolors') || &cp
    finish
endif

let loaded_setcolors = 1
"let s:mycolors = ['slate', 'torte', 'darkblue', 'delek', 'murphy', 'elflord', 'pablo', 'koehler']  " colorscheme names that we use to set color

" Set list of color scheme names that we will use, except
" argument 'now' actually changes the current color scheme.
function! s:SetColors(args)
    if len(a:args) == 0
        echo 'Current color scheme names:'
        let i = 0
        while i < len(s:mycolors)
            echo '  '.join(map(s:mycolors[i : i+4], 'printf("%-14s", v:val)'))
            let i += 5
        endwhile
    elseif a:args == 'all'
        let paths = split(globpath(&runtimepath, 'colors/*.vim'), "\n")
        let s:mycolors = map(paths, 'fnamemodify(v:val, ":t:r")')
        echo 'List of colors set from all installed color schemes'
    elseif a:args == 'my'
        let c1 = 'default elflord peachpuff desert256 breeze morning'
        let c2 = 'darkblue gothic aqua earth black_angus relaxedgreen'
        let c3 = 'darkblack freya motus impact less chocolateliquor'
        let s:mycolors = split(c1.' '.c2.' '.c3)
        echo 'List of colors set from built-in names'
    elseif a:args == 'now'
        call s:HourColor()
    else
        let s:mycolors = split(a:args)
        echo 'List of colors set from argument (space-separated names)'
    endif
endfunction

command! -nargs=* SetColors call s:SetColors('<args>')

" Set next/previous/random (how = 1/-1/0) color from our list of colors.
" The 'random' index is actually set from the current time in seconds.
" Global (no 's:') so can easily call from command line.
function! NextColor(how)
    call s:NextColor(a:how, 1)
endfunction

" Helper function for NextColor(), allows echoing of the color name to be
" disabled.
function! s:NextColor(how, echo_color)
    if len(s:mycolors) == 0
        call s:SetColors('all')
    endif
    if exists('g:colors_name')
        let current = index(s:mycolors, g:colors_name)
    else
        let current = -1
    endif
    let missing = []
    let how = a:how
    for i in range(len(s:mycolors))
        if how == 0
            let current = localtime() % len(s:mycolors)
            let how = 1  " in case random color does not exist
        else
            let current += how
            if !(0 <= current && current < len(s:mycolors))
                let current = (how>0 ? 0 : len(s:mycolors)-1)
            endif
        endif
        try
            execute 'colorscheme '.s:mycolors[current]
            break
        catch /E185:/
            call add(missing, s:mycolors[current])
        endtry
    endfor
    redraw
    if len(missing) > 0
        echo 'Error: colorscheme not found:' join(missing)
    endif
    if (a:echo_color)
        echo g:colors_name
    endif
endfunction

nnoremap <F8> :call NextColor(1)<CR>
nnoremap <S-F8> :call NextColor(-1)<CR>
nnoremap <A-F8> :call NextColor(0)<CR>
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
    colorscheme solarized
else
    colorscheme solarized9
endif

let g:lightline = { 'colorscheme': 'tender' }
let g:VimTodoListsDatesEnabled = 1
let g:VimTodoListsMoveItems = 0
"emacs bingin rsi plugin
"not needed you can use <C-w> 
imap <C-BS> <M-BS>
"Do not redraw screen in the middle of a macro. Makes them complete faster.
set lazyredraw

"Run the current line as if it were a command. Often more convenient than q: when experimenting.
nnoremap <leader>e :exe getline(line('.'))<cr>
