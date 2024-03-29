" Set nocompatible
set nocompatible

" Always load these plugins
execute pathogen#infect('bundle/always/{}')

" Load filetype specific plugins
autocmd FileType * if isdirectory($HOME . '/.vim/bundle/' . &ft) | execute pathogen#infect('bundle/' . &ft. '/{}') | endif

" Line numbers
set number relativenumber

" Toggle between realtive and absolute line numbers
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Map Ctrl-C to Esc in insert mode, causing InsertLeave to fire
inoremap <C-C> <Esc>

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
set ignorecase " Ignore search case
set smartcase " ... except when using capital letters

" Clear search highlight with Ctrl+L
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" Enable mouse in vim
set mouse=a

" F11 toggles paste mode
set pastetoggle=<F11>

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
nnoremap <buffer> <Enter> o<ESC>
nnoremap <buffer> <S-Enter> O<ESC>

" Use tab for indentation
vmap <tab> >gv
vmap <s-tab> <gv

" Also match angle brackets
set matchpairs+=<:>

" Use system clipboard as default
set clipboard=unnamedplus

" Set lazy redrwaing
set lazyredraw

" Package configutation

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Colour scheme
let g:gruvbox_italic=1
set termguicolors
colorscheme gruvbox
set background=dark

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-templates
let g:templates_directory="~/.vim/templates-local/"

" Language specific support

augroup filetype_perl
    autocmd!

    " F1 = Format code
    autocmd FileType perl nnoremap <F1> :%!perltidy -q<CR>
    autocmd FileType perl vnoremap <F1> :!perltidy -q<CR>

    " F5 = Save and run
    autocmd FileType perl noremap <buffer> <F5> :w<CR>:!clear;perl %<CR>

    " Enable syntastic for perl
    autocmd FileType perl let g:syntastic_perl_checkers = ['perl']
    autocmd FileType perl let g:syntastic_enable_perl_checker = 1

    " Set text width to 78
    autocmd FileType perl set textwidth=78
augroup end

