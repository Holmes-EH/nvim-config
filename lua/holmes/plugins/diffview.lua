return {
	"sindrets/diffview.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "<leader>dv", "<cmd>DiffviewOpen<CR>", desc = "DiffView - Open" },
		{ "<leader>df", "<cmd>DiffviewFileHistory %<CR>", desc = "DiffView - FileHistory" },
	},
}
