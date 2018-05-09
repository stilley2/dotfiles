"Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'https://github.com/neomake/neomake.git'
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'https://github.com/BurningEther/iron.nvim'
Plug 'davidhalter/jedi-vim',
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'https://github.com/davidhalter/jedi-vim.git'
" Plug 'https://github.com/zchee/deoplete-jedi.git'
call plug#end()

"Host specific
if hostname() == 'aiai-heinlein.jhmi.edu'
	let g:python3_host_prog = '/home/stilley2/anaconda3/envs/py3dev/bin/python'
endif

set background=dark
colorscheme solarized

syntax on
filetype indent plugin on
set nu
" https://pythonadventures.wordpress.com/tag/neomake/
set grepprg=grep\ -nH\ $*
tnoremap <Esc> <C-\><C-n>
set scrolloff=10
set guicursor=
set nojoinspaces
set hidden

"https://stackoverflow.com/questions/446269/can-i-use-space-as-mapleader-in-vim
noremap <space> <Nop>
let mapleader = " "
map <leader>n :tabn<CR>
map <leader>p :tabp<CR>

let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_python_flake8_maker = { 'args': ['--ignore=E501'], }
let g:neomake_cpp_gcc_maker = {'args': ['--std=c++11']}
call neomake#configure#automake('w')

let g:jedi#usages_command = "<leader>j"
let g:jedi#smart_auto_mappings = 0

autocmd BufNewFile,BufRead *.md setlocal ft=markdown
autocmd FileType markdown setlocal tw=80 spell spelllang=en_us
autocmd FileType tex setlocal spell spelllang=en_us

" let g:deoplete#enable_at_startup = 1
" let g:deoplete#disable_auto_complete = 0
" autocmd FileType text let b:deoplete_disable_auto_complete = 1
" let g:deoplete#sources#jedi#server_timeout = 30
" let g:deoplete#sources#jedi#show_docstring = 1
