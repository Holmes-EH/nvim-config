return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				window = {
					width = 30,
				},
			})
			local keymap = vim.keymap -- for conciseness

			keymap.set("n", "<leader>bn", ":Neotree filesystem toggle reveal<CR>", { desc = "Toggle tree display" })
			keymap.set(
				"n",
				"<leader>bf",
				":Neotree buffers reveal float<CR>",
				{ desc = "Show open buffers in floating window" }
			)
			keymap.set(
				"n",
				"<leader>bg",
				":Neotree float git_status<CR>",
				{ desc = "Open git status in floating window" }
			)
		end,
	},
}
