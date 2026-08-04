return {
  "nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      gopls = {
        settings = {
          gopls = {
            staticcheck = false,
          },
        },
      },
      kotlin_language_server = { enabled = false },
      kotlin_lsp = {
        single_file_support = false,
      },
    },
  },
}
