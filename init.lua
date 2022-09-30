vim.opt.number = true
vim.opt.clipboard = "unnamedplus" -- in order to use: "+y to put the yank register into the clipboard
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.ignorecase = true 
vim.opt.smartcase = true -- both need to set for the smartcase

vim.opt.mouse = "a" -- enable mouse in normal mode
vim.opt.splitbelow = true
vim.opt.background = "light"

vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", "<leader>v", ":e $MYVIMRC<CR>", {noremap = true, silent = true})

-- tabs keymaps
vim.api.nvim_set_keymap("n", "<A-S-h>", ":tabp<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-S-l>", ":tabn<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-S-x>", ":tabclose<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-S-n>", ":tabnew<CR>", {noremap = true, silent = true})

-- window keymaps
vim.api.nvim_set_keymap("n", "<A-j>", "<C-w>j", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-k>", "<C-w>k", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-h>", "<C-w>h", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-l>", "<C-w>l", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-S-\\=>", "<C-w>+", {noremap = true, silent = true})
-- TODO vim.api.nvim_set_keymap("n", "<C-A-S-\\=>", "<C-w>-", {noremap = true, silent = true})
 
-- copy shortcut 
vim.api.nvim_set_keymap("x", "<A-c>", ':y"+y<CR>', {noremap = true, silent = true})
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
vim.api.nvim_set_keymap("n", "<leader>ds", ':call vimspector#Launch()<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>dk", ':call vimspector#Reset()<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>dc", ':call vimspector#Continue()<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>dn", ':call vimspector#StepOver()<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>dso", ':call vimspector#StepOut()<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>dsi", ':call vimspector#StepInto()<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>dr", ':call vimspector#RunToCursor()<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>db", ':call vimspector#ToggleBreakpoint()<CR>', {noremap = true, silent = false})

-- make shortcuts
vim.api.nvim_set_keymap("n", "<leader>md", ':make debugst<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>m", ':make<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>mc", ':make clean<CR>', {noremap = true, silent = false})

-- pathTracer
vim.api.nvim_set_keymap("n", "<leader>ptr", ':!./build/pathTracer examples/cornell.usda<CR>', {noremap = true, silent = false})

-- plugins and theme
vim.cmd [[
call plug#begin()
Plug 'github/copilot.vim'
Plug 'puremourning/vimspector'
Plug '907th/vim-auto-save'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'knsh14/vim-github-link'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-obsession'
call plug#end()

colorscheme PaperColor
set background=light
]]

-- function to close all buffers excepts the ones openeds
-- type `call CloseHiddenBuffers()` in the command mode
vim.cmd [[
function! CloseHiddenBuffers()
  let i = 0
  let n = bufnr('$')
  while i < n
    let i = i + 1
    if bufloaded(i) && bufwinnr(i) < 0
      exe 'bd! ' . i
    endif
  endwhile
endfun
]]



-- Notes 
-- to search through cmd history type: `: and <C-f>`
