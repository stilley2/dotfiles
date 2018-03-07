call plug#begin('~/.local/share/nvim/plugged')
Plug 'https://github.com/neomake/neomake.git'
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'https://github.com/BurningEther/iron.nvim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'https://github.com/davidhalter/jedi-vim.git'
Plug 'https://github.com/zchee/deoplete-jedi.git'
call plug#end()
syntax on
set background=dark
colorscheme solarized
filetype indent plugin on
let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_python_flake8_maker = { 'args': ['--ignore=E501'], }
let g:neomake_cpp_gcc_maker = {'args': ['--std=c++11']}
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 0
autocmd FileType text let b:deoplete_disable_auto_complete = 1
let g:deoplete#sources#jedi#server_timeout = 30
let g:deoplete#sources#jedi#show_docstring = 1
if hostname() == 'aiai-heinlein.jhmi.edu'
	let g:python3_host_prog = '/home/stilley2/anaconda3/envs/py3dev/bin/python'
endif
" https://pythonadventures.wordpress.com/tag/neomake/
set grepprg=grep\ -nH\ $*
set nu
"set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
"set autoindent
autocmd BufNewFile,BufRead *.md setlocal ft=markdown
autocmd FileType markdown setlocal tw=80 spell spelllang=en_us
autocmd FileType tex setlocal spell spelllang=en_us
"https://stackoverflow.com/questions/446269/can-i-use-space-as-mapleader-in-vim
noremap <space> <Nop>
let mapleader = " "
map <leader>n :tabn<CR>
map <leader>p :tabp<CR>
"map <C-l> :SyntasticCheck<CR>
tnoremap <Esc> <C-\><C-n>
set scrolloff=10
"set inde=
set guicursor=
autocmd! BufWritePost * Neomake
