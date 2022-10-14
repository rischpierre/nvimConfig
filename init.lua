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
vim.api.nvim_set_keymap("n", "<leader>v", ":tabe $MYVIMRC<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>so", ":so %<CR>", {noremap = true, silent = false})

-- TABS 
vim.api.nvim_set_keymap("n", "<A-h>", ":tabp<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-l>", ":tabn<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-x>", ":tabclose<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-n>", ":tabnew<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>th", ":tabm -1<CR>", {noremap = true, silent = true})  -- move tabs 
vim.api.nvim_set_keymap("n", "<leader>tl", ":tabm +1<CR>", {noremap = true, silent = false})

-- BUFFERS
vim.api.nvim_set_keymap("n", "<leader>bda", ":%bd! | e#<CR>", {noremap = true, silent = false}) -- delete all buffers except current

-- WINDOW 
vim.api.nvim_set_keymap("n", "<A-S-j>", "<C-w>j", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-S-k>", "<C-w>k", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-S-h>", "<C-w>h", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-S-l>", "<C-w>l", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-S-\\=>", "<C-w>+", {noremap = true, silent = true})
 
-- Copy shortcuts
vim.api.nvim_set_keymap("x", "<A-c>", ':y"+y<CR>', {noremap = true, silent = true})
-- todo
-- vim.api.nvim_set_keymap('n', '<leader>cf', ':let @"=expand("%") | "+y<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>cgh', ':GetCurrentBranchLink<CR>', {noremap = true, silent = false})

-- in order to use ESC to exit terminal mode
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Esc>", ":noh<CR>", {noremap = true, silent = true})

-- set word uppercase 
vim.api.nvim_set_keymap("n", "<A-S-U>", "viw<S-U>e", {noremap = true, silent = true})

vim.g.auto_save = true

-- Fzf config
vim.api.nvim_set_keymap("n", "<C-p>", ":tabnew | Files<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>ff", ":tabnew | Ag<CR>", {noremap = true, silent = false})
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


-- FORMAT
-- todo need to give the lines to the formatter to format by line 
vim.api.nvim_set_keymap('n', '<leader>fc', ':!clang-format -i % <CR>', {noremap = true, silent = false})

-- lsp
vim.api.nvim_set_keymap('n', '<leader>gdc', ':lua vim.lsp.buf.declaration()<cr>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>gdf', ':lua vim.lsp.buf.definition()<cr>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>gi', ':lua vim.lsp.buf.implementation()<cr>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>gr', ':lua vim.lsp.buf.references()<cr>', {noremap = true, silent = false})

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
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'gcmt/taboo.vim'
call plug#end()

colorscheme PaperColor
set background=light
let g:airline#extensions#tabline#fnamemod = ':t'
]]

-- add todo to the syntax
vim.cmd [[
    syntax keyword Todo todo   
]]

-- treesitter config
require'nvim-treesitter.configs'.setup {
    ensure_installed = {"lua", "python", "cpp", "bash", "make"},
    auto_install = false,
    highlight = {enable = true, },
    indent = {enable = true, },
}

local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)

-- Notes 
-- to search through cmd history type: `: and <C-f>`
-- to go back/forward to the last position: <C-o> and <C-i>
-- to rename a tab: :TabooRename <new name>

