local keymap = vim.keymap -- for conciseness

-- window navigation
keymap.set("n", "<C-h>", [[<Cmd>wincmd h<CR>]], {})
keymap.set("n", "<C-j>", [[<Cmd>wincmd j<CR>]], {})
keymap.set("n", "<C-k>", [[<Cmd>wincmd k<CR>]], {})
keymap.set("n", "<C-l>", [[<Cmd>wincmd l<CR>]], {})

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>s=", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<C-w>c", { desc = "Close current split" })
keymap.set("n", "<leader>s,", "10<C-w><", { desc = "Decrease current split width by 10" })
keymap.set("n", "<leader>s.", "10<C-w>>", { desc = "Increase current split width by 10" })
keymap.set("n", "<leader>s<", "30<C-w><", { desc = "Decrease current split width by 10" })
keymap.set("n", "<leader>s>", "30<C-w>>", { desc = "Increase current split width by 10" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>ty", "gt", { desc = "Go to next tab" })
keymap.set("n", "<leader>tt", "gT", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
