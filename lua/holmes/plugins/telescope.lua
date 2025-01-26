return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",

		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"nvim-tree/nvim-web-devicons",
		},

		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")

			telescope.setup({
				defaults = {
					path_display = { "smart" },
					file_ignore_patterns = { "node_modules", "package-lock.json" },
					mappings = {
						i = {
							["<C-k>"] = actions.move_selection_previous, -- move to prev result
							["<C-j>"] = actions.move_selection_next, -- move to next result
							["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						},
					},
					layout_config = {
						prompt_position = "top",
					},
				},
				pickers = {
					buffers = {
						mappings = {
							i = {
								["<c-d>"] = actions.delete_buffer,
							},
							n = {
								["<c-d>"] = actions.delete_buffer,
							},
						},
						initial_mode = "normal",
						theme = "dropdown",
						layout_config = {
							height = 0.4,
							width = 0.6,
							prompt_position = "top",
							preview_cutoff = 120,
						},
					},
					document_symbols = {
						initial_mode = "normal",
						theme = "dropdown",
						layout_config = {
							height = 0.4,
							width = 0.6,
							prompt_position = "top",
							preview_cutoff = 120,
						},
					},
				},
			})

			-- set keymaps
			local keymap = vim.keymap -- for conciseness
			local builtin = require("telescope.builtin")

			keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
			keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
			keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
			keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

			telescope.load_extension("fzf")
			telescope.load_extension("noice")
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
