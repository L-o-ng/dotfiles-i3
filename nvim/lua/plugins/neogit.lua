return {
  "NeogitOrg/neogit",
  lazy = true,
  dependencies = {
    "sindrets/diffview.nvim",        -- optional
    "m00qek/baleia.nvim",            -- optional
    "nvim-telescope/telescope.nvim", -- optional
  },
  cmd = "Neogit",
  keys = {
    { "<space>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" }
  }
}
