local bufnr = vim.api.nvim_get_current_buf()
local opts = {
	silent = true,
	buffer = bufnr,
}
local map = vim.keymap.set

local ca = function()
	vim.cmd.RustLsp("codeAction")
end

local run = function()
	vim.cmd.RustLsp({ "runnables" })
end

local test = function()
	vim.cmd.RustLsp({ "testables" })
end

local expand_macro = function()
	vim.cmd.RustLsp("expandMacro")
end

map("n", "<leader>a", ca, opts)
map("n", "<F5>", run, opts)
map("n", "<F6>", test, opts)
map("n", "<leader>em", expand_macro, opts)
