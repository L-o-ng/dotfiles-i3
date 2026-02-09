return {
    { "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      animate = { enabled = true },
      image = { enabled = true },
      debug = { enabled = true },
      bigfile = { enabled = true },
      dim = { enabled = true },
      input = { enabled = true },
      notifier = { enabled = true },
      words = { enabled = true },
    },
  },
}