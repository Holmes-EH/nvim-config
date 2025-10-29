return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "BufReadPost",
  opts = {
    copilot_node_command = vim.fn.expand("$HOME") .. "/.nvm/versions/node/v24.9.0/bin/node",
  },
}
