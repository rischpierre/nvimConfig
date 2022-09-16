set number

" Themes
set background=light
colorscheme PaperColor


" Maps
tnoremap <Esc> <C-\><C-n> " in order to use ESC to exit terminal mode


" Commands 
command SourceInit source ~/.config/nvim/init.vim 

call plug#begin()
Plug 'github/copilot.vim'
call plug#end()
