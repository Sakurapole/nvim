vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- define common options
local opts = {
  noremap = true, -- non-recursive
  silent = true,  -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- NvimTree
vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>', opts)

-- BarBar
-- Move to previous/next buffer
vim.keymap.set('n', '<A-Left>', ':BufferPrevious<CR>', opts)
vim.keymap.set('n', '<A-Right>', ':BufferNext<CR>', opts)
-- Re-order to previous/next location
vim.keymap.set('n', '<AS-Left>', ':BufferMovePrevious<CR>', opts)
vim.keymap.set('n', '<AS-Right>', ':BufferMoveNext<CR>', opts)
-- Goto buffer in number position
vim.keymap.set('n', '<A-1>', ':BufferGoto 1<CR>', opts)
vim.keymap.set('n', '<A-2>', ':BufferGoto 2<CR>', opts)
vim.keymap.set('n', '<A-3>', ':BufferGoto 3<CR>', opts)
vim.keymap.set('n', '<A-4>', ':BufferGoto 4<CR>', opts)
vim.keymap.set('n', '<A-5>', ':BufferGoto 5<CR>', opts)
vim.keymap.set('n', '<A-6>', ':BufferGoto 6<CR>', opts)
vim.keymap.set('n', '<A-7>', ':BufferGoto 7<CR>', opts)
vim.keymap.set('n', '<A-8>', ':BufferGoto 8<CR>', opts)
vim.keymap.set('n', '<A-9>', ':BufferGoto 9<CR>', opts)
vim.keymap.set('n', '<A-0>', ':BufferGoto 0<CR>', opts)
-- Buffer Pick
vim.keymap.set('n', '<AS-p>', ':BufferPick<CR>', opts)
-- Pin/Unpin Buffer
vim.keymap.set('n', '<A-p>', ':BufferPin<CR>', opts)
vim.keymap.set('n', '<A-gp>', ':BufferGotoPinned<CR>', opts)
-- Close Buffer
vim.keymap.set('n', '<C-w>', ':BufferClose<CR>', opts)
vim.keymap.set('n', '<C-wbc>', ':BufferCloseAllButCurrent<CR>', opts)
vim.keymap.set('n', '<C-wbp>', ':BufferCloseAllButPinned<CR>', opts)
vim.keymap.set('n', '<C-wbpc>', ':BufferCloseAllButCurrentOrPinned<CR>', opts)




-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)


