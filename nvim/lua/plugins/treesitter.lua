return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = { 'rust', 'gdscript', 'python', 'bash', 'javascript', 'html', 'java' },
      highlight = {
        enable = true,
        disable = { "haskell" },
      },
    })
  end,
}
