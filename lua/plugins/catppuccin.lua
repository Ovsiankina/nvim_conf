return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function() -- This automatically calls 'require'
    vim.cmd.colorscheme "catppuccin" 
  end
}
