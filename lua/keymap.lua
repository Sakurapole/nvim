vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- define common options
local opts = {
  noremap = true, -- non-recursive
  silent = true,  -- do not show message
}
local map = vim.api.nvim_set_keymap
-----------------
-- Normal mode --
-----------------

-- clear ambiguous keybinding (beacuse I don't know what plugin occupied these keybinding)
map("n", "<leader>f", "", opts)
map("n", "<A-f>", "", opts)
vim.keymap.set("n", "f", "", opts) -- maybe goto the last opened file

-- move item
map("n", "<A-Down>", ":m .+1<CR>", opts)
map("n", "<A-Up>", ":m .-2<CR>", opts)

-- Hint: see `:h vim.map()`
-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- NvimTree
map("n", "<C-b>", ":NvimTreeToggle<CR>", opts)

-- BarBar
-- Move to previous/next buffer
map("n", "<A-Left>", ":BufferPrevious<CR>", opts)
map("n", "<A-Right>", ":BufferNext<CR>", opts)
-- Re-order to previous/next location
map("n", "<AS-Left>", ":BufferMovePrevious<CR>", opts)
map("n", "<AS-Right>", ":BufferMoveNext<CR>", opts)
-- Goto buffer in number position
map("n", "<A-1>", ":BufferGoto 1<CR>", opts)
map("n", "<A-2>", ":BufferGoto 2<CR>", opts)
map("n", "<A-3>", ":BufferGoto 3<CR>", opts)
map("n", "<A-4>", ":BufferGoto 4<CR>", opts)
map("n", "<A-5>", ":BufferGoto 5<CR>", opts)
map("n", "<A-6>", ":BufferGoto 6<CR>", opts)
map("n", "<A-7>", ":BufferGoto 7<CR>", opts)
map("n", "<A-8>", ":BufferGoto 8<CR>", opts)
map("n", "<A-9>", ":BufferGoto 9<CR>", opts)
map("n", "<A-0>", ":BufferGoto 0<CR>", opts)
-- Buffer Pick
map("n", "<AS-p>", ":BufferPick<CR>", opts)
-- Pin/Unpin Buffer
map("n", "<A-p>", ":BufferPin<CR>", opts)
map("n", "<A-gp>", ":BufferGotoPinned<CR>", opts)
-- Close Buffer
map("n", "<C-c>", ":BufferClose<CR>", opts)
-- map('n', '<C-bcw>', ':BufferCloseAllButCurrent<CR>', opts)
-- map('n', '<C-bpw>', ':BufferCloseAllButPinned<CR>', opts)
-- map('n', '<C-bopcw>', ':BufferCloseAllButCurrentOrPinned<CR>', opts)

-- Resize with arrows
-- delta: 2 lines
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Yazi
map("n", "<A-f>y", ":Yazi<CR>", opts)
map("n", "<A-f>cw", ":Yazi cwd<CR>", opts)
map("n", "<A-f>t", ":Yazi toggle<CR>", opts)

-- Telescope
local tb = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", tb.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", tb.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", tb.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", tb.help_tags, { desc = "Telescope help tags" })

-- ToggleTerm
vim.keymap.set("n", "<A-`>", ":ToggleTerm<CR>", opts)

vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
function _G.set_terminal_keymaps()
  local opts2 = { buffer = 0 }
  vim.keymap.set('t', '<ESC>', [[<C-\><C-n>]], opts2)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts2)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts2)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts2)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts2)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts2)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts2)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- move item
map("v", "<A-Down>", ":m .+1<CR>", opts)
map("v", "<A-Up>", ":m .-2<CR>", opts)
