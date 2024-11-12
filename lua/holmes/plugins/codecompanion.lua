return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		"hrsh7th/nvim-cmp", -- Optional: For using slash commands and variables in the chat buffer
		"nvim-telescope/telescope.nvim", -- Optional: For using slash commands
		{ "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } }, -- Optional: For prettier markdown rendering
		{ "stevearc/dressing.nvim", opts = {} }, -- Optional: Improves `vim.ui.select`
	},
	config = function()
		require("codecompanion").setup({
			strategies = {
				chat = {
					adapter = "ollama",
				},
				inline = {
					adapter = "ollama",
				},
			},
		})
		local keymap = vim.keymap

		keymap.set("n", "<leader>aa", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
		keymap.set("v", "<leader>aa", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
		keymap.set("n", "<leader>at", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
		keymap.set("v", "<leader>at", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
		keymap.set("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })

		-- Expand 'cc' into 'CodeCompanion' in the command line
		vim.cmd([[cab cc CodeCompanion]])
	end,
}
