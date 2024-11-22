return {
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
      -- require("core.utils").load_mappings("gopher")
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gofumpt",
        "golines",
        "goimports",
        "gopls",
      },
    },
  },
  -- {
  --   "mfussenegger/nvim-dap",
  --   init = function()
  --     require("core.utils").load_mappings("dap")
  --   end
  -- },
  {
    "dreamsofcode-io/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
      -- require("core.utils").load_mappings("dap_go")
    end
  },
}
