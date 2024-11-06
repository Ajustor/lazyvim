-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = vim.opts

vim.keymap.set(
	"n",
	"<leader>sx",
	require("telescope.builtin").resume,
	{ noremap = true, silent = true, desc = "Resume" }
)

-- Change paste
vim.keymap.set("n", "x", '"_x', opts)
vim.keymap.set("v", "p", '"_dP', opts)

-- Move lines
vim.keymap.set({ "x", "n" }, "<A-j>", ":move +1<CR>", opts)
vim.keymap.set({ "x", "n" }, "<A-k>", ":move -2<CR>", opts)

-- Clear search
vim.keymap.set("n", "<leader>l", ":nohls<cr><c-l>", opts)

local dap = require("dap")

-- Set keymaps to control the debugger
vim.keymap.set("n", "<F5>", require("dap").continue)
vim.keymap.set("n", "<F10>", require("dap").step_over)
vim.keymap.set("n", "<F11>", require("dap").step_into)
vim.keymap.set("n", "<F12>", require("dap").step_out)
vim.keymap.set("n", "<leader>b", require("dap").toggle_breakpoint)
vim.keymap.set("n", "<leader>B", function()
	require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
end)
