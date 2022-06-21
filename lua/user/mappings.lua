-- Leader Key

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Escape Key

vim.api.nvim_set_keymap(
  'i',
  'jk',
  '<ESC>',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'i',
  'jj',
  '<ESC>',
  { noremap = true }
)

-- Sourcing Files

vim.api.nvim_set_keymap(
  'n',
  '<leader>r',
  ':source ~/.config/nvim/init.lua<CR>',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<C-r>',
  ':source ~/.config/nvim/init.lua<CR>',
  { noremap = true }
)

-- Repeat Key

vim.api.nvim_set_keymap(
  'n',
  's',
  '.',
  { noremap = true }
)

-- Indenting Keys

vim.api.nvim_set_keymap(
  'v',
  '<',
  '<gv',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'v',
  '>',
  '>gv',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<Tab>',
  '>>',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'v',
  '<Tab>',
  '>gv',
  { noremap = true }
)

-- Disabling Keys

vim.api.nvim_set_keymap(
  'n',
  '<Up>',
  'Nop',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<Down>',
  'Nop',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<Left>',
  'Nop',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<Right>',
  'Nop',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'v',
  '<Up>',
  'Nop',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'v',
  '<Down>',
  'Nop',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'v',
  '<Left>',
  'Nop',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'v',
  '<Right>',
  'Nop',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'c',
  '<Up>',
  'Nop',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'c',
  '<Down>',
  'Nop',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'c',
  '<Left>',
  'Nop',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'c',
  '<Right>',
  'Nop',
  { noremap = true }
)

-- Window Resize Mode

vim.api.nvim_set_keymap(
  'n',
  '<C-g>',
  ':WinResizerStartResize<CR>',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<leader>g',
  ':WinResizerStartResize<CR>',
  { noremap = true }
)

-- Write & Quit

vim.api.nvim_set_keymap(
  'n',
  '<C-w>',
  ':w!<CR>',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<C-q>',
  ':q!<CR>',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<leader>w',
  ':w!<CR>',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<leader>q',
  ':q!<CR>',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'c',
  'Wq',
  'wq',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'c',
  'W',
  'w',
  { noremap = true }
)

-- Toggle File Tree

vim.api.nvim_set_keymap(
  'n',
  '<leader>e',
  ':NvimTreeToggle<Enter>',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<leader>e',
  ':NvimTreeToggle<Enter>',
  { noremap = true }
)

-- Buffers and Windows

vim.api.nvim_set_keymap(
  'n',
  '<C-l>',
  ':bn<Enter>',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<C-h>',
  ':bp<Enter>',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<leader>n',
  '<C-w>w',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<leader>l',
  ':bn<Enter>',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<leader>h',
  ':bp<Enter>',
  { noremap = true }
)

-- Going down a line

vim.api.nvim_set_keymap(
  'n',
  '<CR>',
  'o<ESC>',
  { noremap = true }
)

-- Handling Line Wraps

vim.api.nvim_set_keymap(
  'n',
  '0',
  'g0',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '$',
  'g$',
  { noremap = true }
)

-- Better j and k

vim.api.nvim_set_keymap(
  'n',
  'j',
  'gjzz',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  'k',
  'gkzz',
  { noremap = true }
)

-- No problem missing the r key in normal mode

vim.api.nvim_set_keymap(
  'n',
  'e',
  'r',
  { noremap = true }
)

-- Creative Genious

vim.api.nvim_set_keymap(
  'c',
  'jj',
  '<Cr>',
  { noremap = true }
)



-- Emmet trigger key

vim.cmd([[
imap <C-o> <C-y>,

]])


-- Code Action Trigger

vim.cmd([[
nnoremap <C-p> :CodeActionMenu<Cr>

]])
