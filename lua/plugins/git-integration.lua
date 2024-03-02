return {
  -- Git commands integrated into neovim
  {
    "tpope/vim-fugitive",
  },
  -- Previews, blame, etc..
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },
  -- Git branches visualisation (:Flog)
  {
    "rbong/vim-flog",
    lazy = true,
    cmd = { "Flog", "Flogsplit", "Floggit" },
  },
}
