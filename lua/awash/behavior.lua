vim.wo.signcolumn = 'yes'
vim.o.synmaxcol = 240         -- Max column for syntax highlight

-- Searching

vim.o.hlsearch           = false
vim.o.updatetime = 250
vim.o.ignorecase         = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.smartcase          = true

-- Indenting

vim.o.smarttab           = true
vim.o.smartindent        = true
vim.o.expandtab          = true
vim.o.tabstop            = 2
vim.o.softtabstop        = 2
vim.o.shiftwidth         = 2

-- Don't auto commenting new lines

vim.cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])

-- Handling splits

vim.o.splitbelow         = true
vim.o.splitright         = true

-- vim.o.scrolloff          = 12
-- vim.o.sidescrolloff      = 8

-- Add Mouse support

vim.o.mouse              = 'a'
vim.opt.mousefocus = true

-- Enable background buffers

vim.o.hidden = true

vim.o.history = 100           -- Remember N lines in history

-- Making neovim faster

-- vim.o.lazyredraw = true

-- Swap files suck

vim.cmd [[set noswapfile]]


-- Use global clipboard

vim.cmd [[set clipboard+=unnamedplus]]

-- Lang and spell

vim.o.fileencoding       = "utf-8"
vim.o.spell              = false

-- Completion behavior

vim.o.completeopt        = "menuone,noinsert,noselect"
vim.o.wildmode           = "longest,full"

-- Enable line wraps
vim.o.wrap = true

-- Highligh yanked text

vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=350})
augroup END
]]

-- Enable undo files

vim.cmd([[

set undodir=$HOME/.vim/undo
set undofile

]])

-- Remove whitespace on save

vim.cmd([[ au BufWritePre * :%s/\s\+$//e ]])

-- Return to last position

vim.cmd([[
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
]])

-- Completion

vim.opt.completeopt = "menu,menuone,noselect"

-- Create folds manually and let the folds be persistent

vim.cmd([[

set foldenable
set foldmethod=manual
au BufWinLeave * mkview
au BufWinEnter * silent! loadview

]])

-- Disable Neovim BuiltIn Plugins

vim.g.loaded_gzip = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1

vim.g.loaded_getscript = 1
vim.g.loaded_getscriptPlugin = 1
vim.g.loaded_vimball = 1
vim.g.loaded_vimballPlugin = 1
vim.g.loaded_2html_plugin = 1

vim.g.loaded_matchit = 1
vim.g.loaded_matchparen = 1
vim.g.loaded_logiPat = 1
vim.g.loaded_rrhelper = 1

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrwSettings = 1
vim.g.loaded_netrwFileHandlers = 1

