set number
set clipboard=unnamedplus  " in order to use: "+y to put the yank register into the clipboard
set tabstop=4
set shiftwidth=4
set expandtab


" Themes
set background=light
" colorscheme PaperColor

" Window
set splitbelow

" Maps
let mapleader = " "
nnoremap <leader>v :e $MYVIMRC<CR>
nnoremap <Esc> <C-\><C-n> " in order to use ESC to exit terminal mode

" Plugins
call plug#begin()
Plug 'github/copilot.vim'
Plug 'puremourning/vimspector'
Plug '907th/vim-auto-save'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'knsh14/vim-github-link'
Plug 'tpope/vim-commentary'
call plug#end()

" Autosave config
let g:auto_save = 1 " enable auto save

" Fzf config
nnoremap <C-p> :Files<CR>
nnoremap <C-o> :Buffers<CR>
let g:fzf_layout = {'down': '40%'}


" vimspector config
let g:vimspector_enable_mappings = 'HUMAN'
nnoremap <leader>sd :call vimspector#Launch()<CR>
nnoremap <leader>kd :call vimspector#Reset()<CR>
nnoremap <leader>c :call vimspector#Continue()<CR>
nnoremap <leader>n :call vimspector#StepOver()<CR>
nnoremap <leader>so :call vimspector#StepOut()<CR>
nnoremap <leader>si :call vimspector#StepInto()<CR>
nnoremap <leader>r :call vimspector#RunToCursor()<CR>
nnoremap <leader>bp :call vimspector#ToggleBreakpoint()<CR>

