return {

  -- Allows formaters (from mason) to be used as LSPs
  -- Exemple: stylua replaces single quotes by double quotes
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua, --stylua in :Mason
        null_ls.builtins.formatting.prettier, -- JS
        null_ls.builtins.diagnostics.eslint_d, --JS
        -- null_ls.builtins.completion.spell,
      },
    })
  end,
}
