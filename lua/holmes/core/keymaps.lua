local keymap = vim.keymap -- for conciseness

-- window navigation
keymap.set("n", "<C-h>", [[<Cmd>wincmd h<CR>]], {})
keymap.set("n", "<C-j>", [[<Cmd>wincmd j<CR>]], {})
keymap.set("n", "<C-k>", [[<Cmd>wincmd k<CR>]], {})
keymap.set("n", "<C-l>", [[<Cmd>wincmd l<CR>]], {})

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
