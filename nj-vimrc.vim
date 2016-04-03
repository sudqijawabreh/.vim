" Display line and column number in bottom ruler.
set ruler
" Display the line numbers.
set number
" Turn sounds off.
set visualbell
" Shows a horizontal highlight on the line with the cursor.
set cursorline

" Activate highlighting search pattern matches & incremental search.
" Incremental search means your cursor will jump to the first match as you
" type.
set hlsearch
set incsearch


" Activate case-insensitive & smart case search (if a capital letter is used
" in your search query, Vim will search case-sensitive).
set ignorecase 
set smartcase

" Set wildchar visual completion awesomeness.
" This is enhanced command line completion and it rocks.
set wildmenu 
set wildmode=full

" Turning on line wrapping and line-break for easy text-file editing.
" Line-break wraps full words at the end of a sentence for readability.
set wrap
set linebreak



color slate 

if has("gui_running")
  " Set a nicer font.
  set guifont=Consolas:h11:cDEFAULT
  " Hide the toolbar.
  set guioptions-=T
endif



" Set tabs to 4 characters and expand to spaces, activate smart indentation.
" See tabstop help for more info.
" Setting tabstop & softtabstop to the same value to avoid messy layout with mixed tabs & spaces.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

" Enabled folding on indent level. That way it works on any code & html, xml
" etc. 
" Setting foldlevelstart ensures that for newly opened files folds are open
" unless they are 10 levels deep.
set foldmethod=indent
set foldenable
set foldlevelstart=10
set foldnestmax=10      " no more than 10 fold levels please