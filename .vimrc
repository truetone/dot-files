"fold settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
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
set shiftwidth=4
set tabstop=4
set noexpandtab
set ea
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
set background=dark
set cursorline
set scrolloff=3
set t_Co=256
set spell spelllang=en_us

"" Show invisible characters as dots
""set list
set listchars=tab:··,trail:·

map <silent> <C-t> :tabe<space>
map <silent> <C-p> :tabp<CR>
map <silent> <C-n> :tabn<CR>

"" Remap F1 to replace indenting spaces with tabs
function! SpacesToTabs()
	set noexpandtab
	retab!
endfunction
nnoremap <silent> <F1> :call SpacesToTabs()<CR>

"" Remap F2 to replace indenting tabs with spaces
function! TabsToSpaces()
	set expandtab
	retab!
endfunction

nnoremap <silent> <F2> :call TabsToSpaces()<CR>

"" Remap F3 to remove whitespace at the end of each line
nnoremap <silent> <F3> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

nnoremap <silent> <F4> :set list! list?<CR>

colorscheme solarized
syntax on
au BufNewFile,BufRead *.twig set filetype=jinja
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead /etc/lighttpd/*.conf,lighttpd.conf set filetype=lighttpd
au BufNewFile,BufRead .bashrc*,bashrc,bash.bashrc,.bash_profile*,.bash_logout*,*.bash,*.ebuild call SetFileTypeSH("bash")
call pathogen#infect()
":nnoremap <F5> :buffers<CR>:buffer<Space>

"" Do not use swap files
set nobackup
set nowritebackup
set noswapfile

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
	return substitute(getcwd(), '/home/thoma127/', "~/", "g")
endfunction

function! HasPaste()
	if &paste
		return 'PASTE MODE	'
	en
	return ''
endfunction
