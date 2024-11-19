return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "tabs",
				tab_size = 24,
				offsets = {
					{
						filetype = "NvimTree",
						text = function()
							local projectDir = vim.loop.cwd()
							return projectDir:gsub(".*%/", "")
						end,
						separator = true,
					},
				},
				show_buffer_close_icons = false,
			},
		})
	end,
}
