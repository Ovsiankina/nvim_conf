return {
  -- LSP has three parts: Mason,

  -- Mason
  -- Installs and manages the LSPs
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
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
      -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({capabilities = capabilities})
      lspconfig.tsserver.setup({capabilities = capabilities})
    end
  }
}
