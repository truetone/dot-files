set shell=/bin/bash
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin 'hallettj/jslint.vim'
" Plugin 'hdima/python-syntax'
" Plugin 'kien/ctrlp.vim'
" Plugin 'klen/python-mode'
" Plugin 'sjbach/lusty'
Plugin 'ajh17/VimCompletesMe'
Plugin 'AndrewRadev/linediff.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'chase/vim-ansible-yaml'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'leafgarland/typescript-vim'
Plugin 'lepture/vim-jinja'
" Plugin 'mfukar/robotframework-vim'
Plugin 'mkitt/tabline.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'nvie/vim-flake8'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'rhysd/conflict-marker.vim'
" Plugin 'scrooloose/syntastic'
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'Shougo/neocomplete.vim'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vinegar'
Plugin 'kchmck/vim-coffee-script'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
Plugin 'isRuslan/vim-es6'
Plugin 'yegappan/grep'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/vim-peekaboo'
Plugin 'thoughtbot/vim-rspec'
" Plugin 'wincent/ferret'
Plugin 'wincent/terminus'
Plugin 'zah/nim.vim'
Plugin 'morhetz/gruvbox'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'yuezk/vim-js'
Plugin 'ap/vim-css-color'

call vundle#end()

" Tabline
hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE

set antialias
set autoindent
set background=dark
set backspace=indent,eol,start
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set backupcopy=yes "prevents some problems with webpack
set cole=0 " don't conceal anything
set cursorline
" set dir=/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set ea
set encoding=utf8
set fileencoding=utf8
set expandtab
set foldlevel=1
set foldmethod=indent
set foldnestmax=10
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set linebreak
set mouse=a
set nofoldenable
set number
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
set scrolloff=3
set shiftround    " round indent to multiple of 'shiftwidth'
set shiftwidth=4
set showcmd
set showmatch
set showmode
set smartcase
set softtabstop=2 " insert/delete 2 spaces when hitting a TAB/BACKSPACE
set spell spelllang=en_us
set t_Co=256
set tabstop=4
set ttyfast
set wildmenu
set wildmode=list:longest
" set writebackup

"" Show invisible characters as dots
""set list
set listchars=tab:··,trail:·

"" Do not use swap files
set nobackup
set nowritebackup
set noswapfile

"" :setlocal buftype=nofile
"" :setlocal bufhidden=hide

"" vim-markdown
let g:vim_markdown_follow_anchor = 1

"" pymode virtualenv detection
let g:pymode_virtualenv = 1
let g:pymode_lint_checker = "pylint"
let g:pymode_virtualenv_path = $VIRTUAL_ENV
let g:pymode_lint_config = '$HOME/.pylint.rc'

"" JavaScript checkers
"" let g:syntastic_javascript_checkers = ['jshint', 'eshint']

"" Twig linting
" let g:syntastic_twig_twiglint_exec = 'php'
" let g:syntastic_twig_twiglint_exe = 'php /Users/thoma127/.twig/twig-lint.phar'
augroup twig_ft
  au!
  autocmd BufNewFile,BufRead *.theme   set syntax=php
augroup END

let $JS_CMD='node'

"" JsDoc options
let g:javascript_plugin_jsdoc = 1
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1

let g:vim_markdown_conceal = 0
let g:indentLine_conceallevel = 0
"" let g:indent_guides_enable_on_vim_startup = 1

" rspec
let g:rspec_command = "!./bin/rspec --drb {spec}"

let g:ale_ruby_rubocop_executable = "/Users/thoma127/.rubies/2.5.0/bin/rubocop"
let g:ale_ruby_rubocop_options = "/Users/thoma127/.rubocop.yml"

let g:FerretExecutable='ag,ack'

" NERDtree-like settings
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
" augroup drawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

map <silent> <C-t> :tabe<space>
map <silent> <C-p> :tabp<CR>
map <silent> <C-n> :tabn<CR>

function! SpacesToTabs()
    set noexpandtab
    retab!
endfunction

"" Remap F2 to replace indenting tabs with spaces
function! TabsToSpaces()
    set expandtab
    retab!
endfunction

set pastetoggle=<F1>

"" Remap F2 to replace indenting spaces with tabs
nnoremap <silent> <F2> :call TabsToSpaces()<CR>

"" Remap F3 to remove whitespace at the end of each line
nnoremap <silent> <F3> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"" Highlight hidden characters as dots (to help find whitespace)
nnoremap <silent> <F4> :set list! list?<CR>

"" Convert 2-space tabs to 4-space
nnoremap <silent> <F5> :%s/^\s*/&&/g<CR>

"" Wrap reload .vimrc w/o restarting.
nnoremap <silent> <F6> :so $MYVIMRC<CR>

"" Set tabspaces to 2
nnoremap <silent> <F7> :set ts=2 sts=2 noet<CR>

"" Set tabspaces to 4
nnoremap <silent> <F8> :set ts=4 sts=4 noet<CR>

"" open w/ fzf
nnoremap <silent> <C-O> :Files<CR>

"" turn on auto word wrapping
"" nnoremap <silent> <C-W> :set tw=79<CR>

"" nnoremap <silent> <C-T> :set tw=0<CR>

" If fzf installed using Homebrew
" set rtp+=/usr/local/bin/fzf

" bind \ (backward slash) to grep shortcut
" nnoremap \ :Ag<SPACE>

"" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" colorscheme solarized
" solarized options
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
" let g:solarized_termcolors = 256

set termguicolors

" colorscheme monokai
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

syntax on

au BufNewFile,BufRead *.twig set filetype=jinja
au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm,*.j2,*.xml set ft=jinja
au BufNewFile,BufRead *.js set ft=javascript
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead /etc/lighttpd/*.conf,lighttpd.conf set filetype=lighttpd
au BufNewFile,BufRead .bashrc*,bashrc,bash.bashrc,.bash_profile*,.bash_logout*,*.bash,*.ebuild call SetFileTypeSH("bash")
au BufNewFile,BufRead *.avsc set filetype=json
" au BufAdd,BufNewFile * nested tab sball

"" call pathogen#infect()
":nnoremap <F5> :buffers<CR>:buffer<Space>

"" Format columns at 80 & 120 characters
let &colorcolumn="80,".join(range(120,999),",")

"Git branch
function! GitBranch()
    let branch = system("git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* //'")
    if branch != ''
        return '   Git Branch: ' . substitute(branch, '\n', '', 'g')
    en
    return ''
endfunction

function! CurDir()
    return substitute(getcwd(), '/Users/thoma127/', "~/", "g")
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

"" Call Flake8 after saving a python source file
""autocmd BufWritePost *.py :call Flake8()

" au FileType javascript call JavaScriptFold()

if has("gui_macvim") || has("gui_vimr")
   set guifont=InputMono:h13
endif

" Auto-close the quickfix buffer if it's the only remaining buffer
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END
source /Users/thoma127/.asrvimrc
