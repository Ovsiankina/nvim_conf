return {
	-- LSP has three parts: Mason,

	-- Mason
	-- Installs and manages the LSPs
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},

	-- Mason-lspconfig
	-- Bridge the gap between neovim and Language servers and ensures languages
	-- are installed
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
      opts = {
          auto_install = true
        },
      },

      -- nvim-lspconfig
      -- Allows neovim to communicate with language servers (I/O)
      {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
          -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
          local capabilities = require("cmp_nvim_lsp").default_capabilities()
          local lspconfig = require("lspconfig")
          lspconfig.lua_ls.setup({ capabilities = capabilities })
          lspconfig.tsserver.setup({ capabilities = capabilities })
          lspconfig.pyright.setup({ capabilities = capabilities })
          lspconfig.sqls.setup({ capabilities = capabilities })
          lspconfig.intelephense.setup({ capabilities = capabilities })
          lspconfig.jdtls.setup({ capabilities = capabilities })
		end,
	},
}
