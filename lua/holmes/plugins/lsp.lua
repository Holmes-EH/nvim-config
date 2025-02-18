return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.gopls.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})
			lspconfig.emmet_ls.setup({
				capabilities = capabilities,
			})
			vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { desc = "LSP - Trigger hover" })
			vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = "LSP - Go to definition" })
			vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "LSP - Code action" })
			vim.keymap.set("n", "<leader>lr", "<cmd>LspRestart<CR>", { desc = "LSP - Restart" })
			vim.keymap.set(
				"n",
				"<leader>lp",
				require("telescope.builtin").lsp_document_symbols,
				{ desc = "Document Symbols" }
			)
		end,
	},
}
