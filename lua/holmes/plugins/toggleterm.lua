return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<C-\>]],
			shade_terminals = false,
		})
	end,
	lazy = true,
	cmd = { "ToggleTerm" },
	keys = {
		{ [[<C-\>]] },
		{
			"<leader>ts",
			"<cmd>TermSelect<cr>",
			desc = "Select term",
		},
	},
}
