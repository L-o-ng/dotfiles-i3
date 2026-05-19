return {
  "abecodes/tabout.nvim",
  event = "InsertEnter",
  config = function()
    require("tabout").setup({
      tabkey = "<Tab>",
      backwards_tabkey = "<S-Tab>",
      act_as_tab = true,
    })
  end,
}
