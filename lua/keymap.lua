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
vim.keymap.set('n', '<>', '', opts)


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


