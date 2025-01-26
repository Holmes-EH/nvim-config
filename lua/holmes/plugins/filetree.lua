return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				disable_netrw = true,
				hijack_cursor = true,
				sync_root_with_cwd = true,
				update_focused_file = {
					enable = true,
					update_root = false,
				},
				view = {
					width = 30,
					preserve_window_proportions = true,
				},
				diagnostics = {
					enable = true,
					show_on_dirs = false,
					icons = {
						hint = "",
						info = "",
						warning = "",
						error = "",
					},
				},
				renderer = {
					root_folder_label = false,
					highlight_git = true,
					highlight_diagnostics = true,
					icons = {
						git_placement = "after",
						show = {
							folder_arrow = false,
							hidden = true,
						},
						glyphs = {
							git = {
								unstaged = "   M",
								untracked = "   ",
							},
						},
					},
				},
				git = {
					show_on_dirs = true,
					show_on_open_dirs = false,
				},
				modified = {
					enable = true,
					show_on_dirs = false,
				},
				-- disable window_picker for
				-- explorer to work well with
				-- window splits
				actions = {
					open_file = {
						window_picker = {
							enable = false,
						},
					},
				},
				filters = {
					git_ignored = false,
					dotfiles = false,
					git_clean = false,
					custom = { ".DS_Store", ".git" },
				},
			})
			local api = require("nvim-tree.api")
			local keymap = vim.keymap

			keymap.set("n", "<leader><Tab>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle tree display" })
			keymap.set("n", "<leader>ee", function() end, { desc = "Open Tree in float" })
			keymap.set("n", "<leader>ef", function()
				api.tree.open()
			end, { desc = "Focus tree display" })
			keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
			keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
		end,
	},
	-- Keep neotree config for the moment ... 19-11-2024
	-- {
	-- 	"nvim-neo-tree/neo-tree.nvim",
	-- 	branch = "v3.x",
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	-- 		"MunifTanjim/nui.nvim",
	-- 	},
	-- 	config = function()
	-- 		require("neo-tree").setup({
	-- 			window = {
	-- 				width = 30,
	-- 			},
	-- 			hide_root_node = true,
	-- 		})
	-- 		local keymap = vim.keymap -- for conciseness
	--
	-- 		keymap.set("n", "<leader>bn", ":Neotree filesystem toggle reveal<CR>", { desc = "Toggle tree display" })
	-- 		keymap.set(
	-- 			"n",
	-- 			"<leader>bf",
	-- 			":Neotree float buffers<CR>",
	-- 			{ desc = "Toggle buffer list in floating window" }
	-- 		)
	-- 		keymap.set(
	-- 			"n",
	-- 			"<leader>bg",
	-- 			":Neotree float git_status<CR>",
	-- 			{ desc = "Open git status in floating window" }
	-- 		)
	-- 	end,
	-- },
}
