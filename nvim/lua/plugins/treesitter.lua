return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = { 'rust', 'gdscript', 'python', 'bash', 'javascript', 'html', 'java', 'latex', 'yaml', 'markdown', 'markdown_inline', 'c_sharp' },
      highlight = {
        enable = true,
        disable = { "haskell" },
      },
    })
  end,
}
