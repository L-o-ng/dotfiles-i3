return {
    { "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.config
    opts = {
      animate = { enabled = true },
      image = { enabled = true },
      debug = { enabled = true },
      bigfile = { enabled = true },
      notifier = { enabled = true, top_down = false },
      dim = { enabled = true },
      input = { enabled = true },
      words = { enabled = true },
    },
  },
}
