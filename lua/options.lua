-- Visual

vim.o.conceallevel       = 0
vim.o.cmdheight          = 1
vim.o.pumheight          = 10
vim.o.showmode           = false
vim.o.showtabline        = 2
vim.o.title              = true
vim.wo.number            = true
vim.wo.relativenumber    = true
vim.o.termguicolors = true
vim.o.cursorline = false
vim.o.cursorcolumn = false
vim.cmd [[colorscheme vscode]]
vim.cmd [[set background=dark]]
vim.cmd [[set laststatus=3]] -- Have on statusline

-- Behaviour

vim.wo.signcolumn = 'yes'
vim.o.hlsearch           = false
vim.o.updatetime = 250
vim.o.ignorecase         = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.smartcase          = true
vim.o.smarttab           = true
vim.o.smartindent        = true
vim.o.expandtab          = true
vim.o.tabstop            = 2
vim.o.softtabstop        = 2
vim.o.shiftwidth         = 2
vim.o.splitbelow         = true
vim.o.splitright         = true
vim.o.scrolloff          = 12
vim.o.sidescrolloff      = 8
vim.o.mouse              = 'a'
vim.opt.mousefocus = true
vim.o.hidden = true           -- Enable background buffers
vim.o.history = 100           -- Remember N lines in history
vim.o.lazyredraw = true       -- Faster scrolling
vim.o.synmaxcol = 240         -- Max column for syntax highlight
vim.cmd [[set noswapfile]]
vim.cmd [[set clipboard+=unnamedplus]] -- Use global clipboard
vim.o.fileencoding       = "utf-8"
vim.o.spell              = false
vim.o.spelllang          = "en_us"
vim.o.completeopt        = "menuone,noinsert,noselect"
vim.o.wildmode           = "longest,full"

-- highligh yanked text
vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=300})
augroup END
]]
-- undo files
vim.o.undofile = true
vim.o.undodir = vim.fn.stdpath("config") .. "/undo"
-- remove whitespace on save
vim.cmd([[ au BufWritePre * :%s/\s\+$//e ]])
-- don't auto commenting new lines
vim.cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])
-- jump to the last position when reopening a file
vim.cmd([[
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
]])

-- Disable inline error messages

vim.diagnostic.config {
  virtual_text = false,
  underline = false,
  signs = true,
}

-- Completion

vim.opt.completeopt = "menu,menuone,noselect"

-- Folds

vim.cmd([[
" enable folding
set foldenable
set foldmethod=manual
" for neovim to save folds
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

-- Logging and debugging

vim.lsp.set_log_level("debug")

