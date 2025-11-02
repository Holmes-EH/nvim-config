return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = { "--config", vim.fn.expand("$HOME/.config/nvim/global-configs/global.markdownlint-cli2.yaml"), "--" },
        },
      },
    },
  },
}
