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
			keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>", {})
			keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
		end,
	},
}
