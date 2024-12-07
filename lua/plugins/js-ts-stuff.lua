return {
  {
    "typed-rocks/ts-worksheet-neovim",
    opts = {
      severity = vim.diagnostic.severity.WARN,
    },
    config = function(_, opts)
      require("tsw").setup(opts)
    end,
  },
  { "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } },
}
