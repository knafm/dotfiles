execute pathogen#infect()
syntax on
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'eslint/eslint'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc-eslint'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mxw/vim-jsx'
Plug 'othree/yajs.vim'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()
filetype plugin indent on
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-json',
  \ ]
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1
let g:javascript_plugin_jsdoc = 1
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4
autocmd FileType html       setlocal shiftwidth=4 tabstop=4
set spell
set spelllang=en_us,ru_ru
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set relativenumber
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:coc_global_extensions += ['coc-eslint']
map <C-c> "+y
colorscheme gruvbox
