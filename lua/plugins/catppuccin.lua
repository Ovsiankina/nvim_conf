return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config = function() -- This automatically calls 'require'
    require("catppuccin").setup({

      background = { -- :h background
        light = "latte",
        dark = "macchiato",
      },
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
      },
    })
    vim.cmd.colorscheme("catppuccin")
    ----- Remap -----
    -- Change the to dark or light (macchiato/latte)
    function ToggleBackground()
      if vim.o.bg == "dark" then
        vim.o.bg = "light"
      else
        vim.o.bg = "dark"
      end
      vim.cmd("colorscheme catppuccin")
    end

    vim.api.nvim_set_keymap("n", "<leader>l", ":lua ToggleBackground()<CR>", { noremap = true, silent = true })
  end,
}
