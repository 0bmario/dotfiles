return {
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 11000,
    config = function()
      require("vscode").setup({
        style = "dark",
        transparent = false,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
