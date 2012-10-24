set hidden
set encoding=utf8
set ttyfast
set laststatus=2
set history=1000
set ignorecase
set smartcase
set nu
set showcmd
set showmatch
set showmode
set wildmenu
set wildmode=list:longest
set ruler
set incsearch
set hlsearch
set antialias
set autoindent
set tabstop=4
set noexpandtab
set ea
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
set background=dark
set cursorline
set scrolloff=3
map <silent> <C-t> :tabe<space>
map <silent> <C-p> :tabp<CR>
map <silent> <C-n> :tabn<CR>
colorscheme solarized
syntax on
au BufNewFile,BufRead *.twig set filetype=jinja
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead /etc/lighttpd/*.conf,lighttpd.conf set filetype=lighttpd
call pathogen#infect()
":nnoremap <F5> :buffers<CR>:buffer<Space>


"Git branch
function! GitBranch()
    let branch = system("git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* //'")
    if branch != ''
        return '   Git Branch: ' . substitute(branch, '\n', '', 'g')
    en
    return ''
endfunction

function! CurDir()
    return substitute(getcwd(), '/home/thoma127/', "~/", "g")
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Format the statusline
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L%{GitBranch()}
