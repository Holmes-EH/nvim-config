return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"MaximilianLloyd/ascii.nvim",
		"MunifTanjim/nui.nvim",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = require("ascii").get_random_global()
		dashboard.section.header.opts = {
			position = "center",
		}

		alpha.setup(dashboard.opts)
	end,
}
