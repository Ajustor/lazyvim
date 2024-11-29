require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>qq", "<cmd>:quitall<CR>", { desc = "Quit all neovim instance" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n" }, "<leader>ll", "<cmd>Lazy<CR>", { desc = "Open lazyvim interface" })
-- Move lines
map({ "x", "n" }, "<A-j>", ":move +1<CR>")
map({ "x", "n" }, "<A-k>", ":move -2<CR>")

map("n", "<leader>mir", "<cmd>CellularAutomaton make_it_rain<CR>")
map("n", "<leader>gol", "<cmd>CellularAutomaton game_of_life<CR>")

map("n", "<leader>dd", function()
  require("duck").hatch()
end, { desc = "Hatch a duck" })

map("n", "<leader>dk", function()
  require("duck").cook()
end, { desc = "Cook a duck" })

map("n", "<leader>da", function()
  require("duck").cook_all()
end, { desc = "Cook all ducks" })

if vim.lsp.inlay_hint then
  map("n", "<leader>uh", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled(nil), nil)
  end, { desc = "Toggle Inlay Hints" })
end
