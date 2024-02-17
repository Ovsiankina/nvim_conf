return {
  -- LSP has three parts: Mason,

  -- Mason
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },

  -- Mason-lspconfig
  -- Bridge the gap between neovim and Language servers and ensures languages
  -- are installed
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {"lua_ls", "tsserver"}
      })
    end
  },

  -- nvim-lspconfig
  -- Allows neovim to communicate with language servers (I/O)
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
    end
  }
}
