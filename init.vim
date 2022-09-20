set number

" Themes
set background=light
colorscheme PaperColor


" Maps
tnoremap <Esc> <C-\><C-n> " in order to use ESC to exit terminal mode
noremap <a-l> :bnext<cr>
noremap <a-h> :bprevious<cr>

" Commands 
command SourceInit source ~/.config/nvim/init.vim 

call plug#begin()
Plug 'github/copilot.vim'
Plug '907th/vim-auto-save'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tpope/vim-fugitive'
call plug#end()


let g:auto_save = 1 " enable auto save
