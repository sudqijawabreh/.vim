" Set tabs to 4 characters and expand to spaces, activate smart indentation.
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
let mapleader = ","
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
noremap <leader>p "0p
command! BufOnly execute '%bdelete|edit #|normal `"'
set nofixeol
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
" set spelling false
set nospell

let g:gruvbox_contrast_dark = 'hard'
" Enabled folding on indent level. That way it works on any code & html, xml
" etc. 
" Setting foldlevelstart ensures that for newly opened files folds are open
" unless they are 10 levels deep.
"set foldmethod=indent
"set foldenable
"set foldlevelstart=10
"set foldnestmax=10      " no more than 10 fold levels please
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
nmap ,n :NERDTreeFind<CR>
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

autocmd FileType gitcommit setlocal spell
autocmd FileType gitcommit setlocal complete+=kspell
autocmd FileType todo setlocal spell
autocmd FileType todo setlocal complete+=kspell
"color Monokai

call plug#begin(g:Home.'/.vim/plugged')
"Plug 'noah/vim256-color'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'tommcdo/vim-exchange'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-repeat'
Plug 'jacoborus/tender.vim'
Plug 'vim-airline/vim-airline'
"Plug 'vim-expand-region'
Plug 'OmniSharp/omnisharp-vim'
Plug 'aserebryakov/vim-todo-lists'
"Plug 'vim-latex/vim-latex'
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-shell'
"Plug 'xolox/vim-easytags'
"Plug 'Syntastic'
Plug 'Valloric/YouCompleteMe'
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
"Plug 'psliwka/vim-smoothie'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
"Plug 'w0ng/vim-hybrid'
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'
"Plug 'shmup/vim-sql-syntax'
Plug 'tpope/vim-unimpaired'
Plug 'sgur/vim-textobj-parameter'
Plug 'habamax/vim-sendtoterm'
"Plug 'terryma/vim-multiple-cursors'
Plug 'ThePrimeagen/vim-be-good'
Plug 'machakann/vim-highlightedyank'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'dyng/ctrlsf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'skamsie/vim-lineletters'
"Plug 'thinkpixellab/flatland'
"Plug 'thinca/vim-painter'
call plug#end()
nmap <silent>,, <Plug>LineLetters
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
    colorscheme gruvbox
else
    "colorscheme solarized8
    colorscheme gruvbox
endif
if has('win32')
  nmap ,cs :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
  nmap ,cl :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>

  " This will copy the path in 8.3 short format, for DOS and Windows 9x
  nmap ,c8 :let @*=substitute(expand("%:p:8"), "/", "\\", "g")<CR>
else
  nmap ,cs :let @*=expand("%")<CR>
  nmap ,cl :let @*=expand("%:p")<CR>
endif
let g:highlightedyank_highlight_duration = 500
let g:lightline = { 'colorscheme': 'tendi' }
"let g:VimTodoListsDatesEnabled = 0
let g:VimTodoListsMoveItems = 0
"emacs binding rsi plugin
"not needed you can use <C-w> 
imap <C-BS> <M-BS>
"Do not redraw screen in the middle of a macro. Makes them complete faster.

"generate GUID
"nmap gu :read !python -c "import uuid;print(str(uuid.uuid4()).upper())"<cr>

"Run the current line as if it were a command. Often more convenient than q: when experimenting.
"nnoremap <leader>e :exe getline(line('.'))<cr>
nnoremap <leader>f 0f(h

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>


if g:vsvim == 0
    nnoremap gd :YcmCompleter GoToDefinition<CR>
    nnoremap gr :YcmCompleter GoToReferences<CR>
    nnoremap rr :YcmCompleter RefactorRename<space><C-R><C-W>
    nnoremap gi :YcmCompleter GoToImplementation<CR>

    nnoremap <silent> <leader>t :OmniSharpTypeLookup<CR>
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
endif
"let g:ycm_auto_start_csharp_server = 1
if g:vsvim == 1
    cd C:\Users\Sudqi\Documents\r365\r365\Application\
    nnoremap gi :vsc Edit.GoToImplementation<CR>
    "map gr :vsc Edit.FindAllReferences<CR>
    map gr :vsc Edit.FindAllReferences<CR>
    map gp :vsc Edit.PeekDefinition<CR>
    map g; `.

    "go to interface
    nmap <leader>gi gg/class<CR>$gd<leader>h
    noremap <leader>last /<C-R>s<CR>

    "use macros instead of mapping cause visual studio bug when going to
    "implementation
    "append current method to interface
    let @i = 'yy,gij%PdawA;Oj0f('
    noremap <leader>gai @i

    "update signature in the interface
    let @e = '0f(h"syiwvily,gi,lastvilp0dwA;0f(h,h'
    noremap <leader> gui @e

    "go to method definition in the interface
    let @g = '0f(h"syiwvily,gi,last,h'
    noremap <leader>gmd @g

    "nnoremap <C-k> :vsc Edit.MoveControlUP<cr>
    "nnoremap <C-j> :vsc Edit.MoveControlDown<cr>
    nnoremap <C-o> :vsc View.NavigateBackward<cr>
    nnoremap <C-i> :vsc View.NavigateForward<cr>
    " break out of the tyranny of text! Navigate by method
    nnoremap <leader>n :vsc Edit.NextMethod<CR>
    nnoremap <leader>m :vsc Edit.PreviousMethod<CR>
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
    vnoremap i, /[,)]<cr>ho?[,(]<cr>l<ESC>:nohl<cr>gv
    vnoremap a, /[,)]<cr>ho?[,(]<cr><ESC>:nohl<cr>gv
    nnoremap ci, /[,)]<cr>hvo?[,(]<cr>l<ESC>:nohl<cr>gvc
    nnoremap di, /[,)]<cr>hvo?[,(]<cr>l<ESC>:nohl<cr>gvd

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
    nnoremap <leader>; A;<ESC>

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

endif

let g:OmniSharp_highlight_types = 2
let g:OmniSharp_server_stdio = 1
