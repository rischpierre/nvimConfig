set number

" Themes
set background=light
" colorscheme PaperColor

" Window
set splitbelow

" Maps
tnoremap <Esc> <C-\><C-n> " in order to use ESC to exit terminal mode

" Plugins
call plug#begin()
Plug 'github/copilot.vim'
Plug '907th/vim-auto-save'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" Autosave config
let g:auto_save = 1 " enable auto save

" Fzf config
nnoremap <C-p> :Files<CR>
nnoremap <C-o> :Buffers<CR>
let g:fzf_layout = {'down': '40%'}

