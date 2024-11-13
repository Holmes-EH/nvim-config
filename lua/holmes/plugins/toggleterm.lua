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
			"<leader>zf",
			function()
				local count = vim.v.count1
				require("toggleterm").toggle(count, 0, vim.loop.cwd(), "float")
			end,
			desc = "ToggleTerm floating Terminal",
		},
		{
			"<leader>zs",
			"<cmd>TermSelect<cr>",
			desc = "Select term",
		},
	},
}
