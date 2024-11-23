require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>qq", "<cmd>:quitall<CR>", { desc = "Quit all neovim instance" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n" }, "<leader>ll", "<cmd>:Lazy<CR", { desc = "Open lazyvim interface" })
-- Move lines
map({ "x", "n" }, "<A-j>", ":move +1<CR>")
map({ "x", "n" }, "<A-k>", ":move -2<CR>")

if vim.lsp.inlay_hint then
  map("n", "<leader>uh", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled(nil), nil)
  end, { desc = "Toggle Inlay Hints" })
end
