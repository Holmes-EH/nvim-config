return {
	"luukvbaal/statuscol.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
	},
	config = function()
		local builtin = require("statuscol.builtin")
		require("statuscol").setup({
			relculright = true,
			ft_ignore = { "NvimTree" },
			segments = {
				{ text = { builtin.foldfunc, " " }, click = "v:lua.ScFa" },
				{
					sign = { namespace = { "diagnostic/signs" }, maxwidth = 2, auto = true },
					click = "v:lua.ScSa",
				},
				{ text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
				{ sign = { namespace = { "gitsigns*" }, auto = true }, click = "v:lua.ScSa" },
			},
		})
	end,
}
