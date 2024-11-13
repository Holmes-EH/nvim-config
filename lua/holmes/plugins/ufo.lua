return {
	-- UFO folding
	{
		"kevinhwang91/nvim-ufo",
		dependencies = {
			"kevinhwang91/promise-async",
			{
				"luukvbaal/statuscol.nvim",
				config = function()
					local builtin = require("statuscol.builtin")
					return {
						setopt = true,
						-- override the default list of segments with:
						-- number-less fold indicator, then signs, then line number & separator
						segments = {
							{
								text = { builtin.lnumfunc, " " },
								condition = { true, builtin.not_empty },
								click = "v:lua.ScLa",
							},
							{ text = { "%s" }, click = "v:lua.ScSa" },
							{ text = { builtin.foldfunc }, click = "v:lua.ScFa" },
						},
					}
				end,
			},
		},
		event = "BufReadPost",
		opts = {
			provider_selector = function()
				return { "treesitter", "indent" }
			end,
		},

		init = function()
			-- UFO folding
			vim.o.foldcolumn = "auto:9"
			vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
			vim.o.foldlevelstart = 99
			vim.o.foldenable = true
			vim.o.fillchars = [[eob: ,fold: ,foldopen:󰬦,foldsep:,foldclose:]]
			vim.keymap.set("n", "zR", function()
				require("ufo").openAllFolds()
			end, { desc = "Open All Folds" })
			vim.keymap.set("n", "zM", function()
				require("ufo").closeAllFolds()
			end, { desc = "Close All Folds" })
		end,
	},
	-- Folding preview, by default h and l keys are used.
	-- On first press of h key, when cursor is on a closed fold, the preview will be shown.
	-- On second press the preview will be closed and fold will be opened.
	-- When preview is opened, the l key will close it and open fold. In all other cases these keys will work as usual.
	{ "anuvyklack/fold-preview.nvim", dependencies = "anuvyklack/keymap-amend.nvim", config = true },
}
