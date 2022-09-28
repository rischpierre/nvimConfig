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
vim.api.nvim_set_keymap("n", "<A-S-\\=>", "<C-w>+", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n", "<C-A-S-\\=>", "<C-w>-", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<A-c>", '":+y<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true}) -- in order to use ESC to exit terminal mode
vim.api.nvim_set_keymap("n", "<Esc>", ":noh<CR>", {noremap = true, silent = true})

-- set word uppercase
vim.api.nvim_set_keymap("n", "<A-S-U>", "viw<S-U>e", {noremap = true, silent = true})


vim.g.auto_save = true

-- Fzf config
vim.api.nvim_set_keymap("n", "<C-p>", ":Files<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<C-o>", ":Buffers<CR>", {noremap = true, silent = false})
vim.g.fzf_layout = {window = {down = '40%'}}

-- vimspector config
-- TODO
-- nnoremap <leader>sd :call vimspector#Launch()<CR>
-- nnoremap <leader>kd :call vimspector#Reset()<CR>
-- nnoremap <leader>c :call vimspector#Continue()<CR>
-- nnoremap <leader>n :call vimspector#StepOver()<CR>
-- nnoremap <leader>so :call vimspector#StepOut()<CR>
-- nnoremap <leader>si :call vimspector#StepInto()<CR>
-- nnoremap <leader>r :call vimspector#RunToCursor()<CR>
-- nnoremap <leader>bp :call vimspector#ToggleBreakpoint()<CR>

-- bootstrap packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

    use 'github/copilot.vim'
    use 'puremourning/vimspector'
    use '907th/vim-auto-save'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'vim-airline/vim-airline'
    use 'knsh14/vim-github-link'
    use 'tpope/vim-commentary'
    use 'tpope/vim-obsession'
    use { 'junegunn/fzf', run = './install --bin', }
    use 'junegunn/fzf.vim'

end)


