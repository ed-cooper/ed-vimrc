" Line numbers
set number relativenumber

" Toggle between realtive and absolute line numbers
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber " TODO fix this
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Highlight current line
set cursorline
hi CursorLine cterm=NONE ctermbg=black
hi CursorLineNr cterm=NONE ctermbg=black

" Visual autocomplete menu for commands
set wildmenu

" Indentation
filetype plugin indent on
set tabstop=4 " Number of spaces per tab
set softtabstop=4 " Number of spaces inserted when tab is pressed
set shiftwidth=4 " Controls how many columns are inserted with reindent operations (<< and >>)
set expandtab " Automatically convert tabs into spaces

" Searching
set incsearch " Search as characters are entered
set hlsearch " Highlight matches

" Clear search highlight with Ctrl+L
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" Folding
set foldenable " Enable folding
set foldlevelstart=10 " Open most folds by default
set foldnestmax=10 " 10 nested folds max
set foldmethod=indent " Fold based on indent level

" Space open/closes folds
nnoremap <space> za

" Move vertically by visual lines (don't skip wrapped lines)
nnoremap j gj
nnoremap k gk

" Allow enter in normal mode
map <Enter> o<ESC>
map <S-Enter> O<ESC>

" Also match angle brackets
set matchpairs+=<:>

