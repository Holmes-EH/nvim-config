return {
	"gbprod/substitute.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local substitute = require("substitute")

		substitute.setup()

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>s", require("substitute.range").operator, { noremap = true })
		keymap.set("x", "<leader>s", require("substitute.range").visual, { noremap = true })
		keymap.set("n", "<leader>ss", require("substitute.range").word, { noremap = true })
	end,
}
