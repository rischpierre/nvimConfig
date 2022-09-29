vim.opt.number = true
vim.opt.clipboard = "unnamedplus" -- in order to use: "+y to put the yank register into the clipboard
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.ignorecase = true 
vim.opt.smartcase = true -- both need to set for the smartcase
-- vim.opt.spell = "spelllang=en_us"

vim.opt.mouse = "a" -- enable mouse in normal mode
vim.opt.splitbelow = true
vim.opt.background = "light"

vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", "<leader>v", ":e $MYVIMRC<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-j>", "<C-w>j", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-k>", "<C-w>k", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-h>", "<C-w>h", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-l>", "<C-w>l", {noremap = true, silent = true})

-- TODO keymap for resizing the window
vim.api.nvim_set_keymap("n", "<A-S-\\=>", "<C-w>+", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n", "<C-A-S-\\=>", "<C-w>-", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<A-c>", '":+y<CR>', {noremap = true, silent = true})
--
-- in order to use ESC to exit terminal mode
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Esc>", ":noh<CR>", {noremap = true, silent = true})

-- set word uppercase 
vim.api.nvim_set_keymap("n", "<A-S-U>", "viw<S-U>e", {noremap = true, silent = true})

vim.g.auto_save = true

-- Fzf config
vim.api.nvim_set_keymap("n", "<C-p>", ":Files<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<C-o>", ":Buffers<CR>", {noremap = true, silent = false})
vim.g.fzf_layout = {down = '40%'}

-- vimspector config
vim.api.nvim_set_keymap("n", "<leader>sd", ':call vimspector#Launch()<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>kd", ':call vimspector#Reset()<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>c", ':call vimspector#Continue()<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>n", ':call vimspector#StepOver()<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>so", ':call vimspector#StepOut()<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>si", ':call vimspector#StepInto()<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>r", ':call vimspector#RunToCursor()<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>bp", ':call vimspector#ToggleBreakpoint()<CR>', {noremap = true, silent = false})

vim.cmd [[
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
Plug 'tpope/vim-obsession'
call plug#end()
]]
