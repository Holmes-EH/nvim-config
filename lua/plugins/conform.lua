return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = { rust = { "rustfmt" } },
    formatters = {
      ["markdownlint-cli2"] = {
        args = {
          "--config",
          vim.fn.expand("$HOME/.config/nvim/global-configs/global.markdownlint-cli2.yaml"),
          "--fix",
          "$FILENAME",
        },
      },
    },
  },
}
