-- Leader Key

vim.g.mapleader = " "
vim.g.maplocalleader = " "

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

-- Remember File Tree

vim.api.nvim_set_keymap(
  'n',
  '<leader>r',
  ':NvimTreeRefresh<Enter>',
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

-- Auto center the text under the cursor

vim.api.nvim_set_keymap(
  'n',
  'j',
  'gjzz',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  'n',
  'nzz',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  'N',
  'Nzz',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  'G',
  'Gzz',
  { noremap = true }
)

-- Instead of hitting enter

vim.api.nvim_set_keymap(
  'c',
  'jj',
  '<Cr>',
  { noremap = true }
)

-- Emmet trigger key

vim.cmd([[
imap <C-o> <c-y>,

]])

-- Code Action Trigger
vim.api.nvim_set_keymap(
  'n',
  '<C-p>',
  ':CodeActionMenu<Cr>,',
  { noremap = true }
)

