-- Neovim Init --
require("config.lazy")
vim.cmd.colorscheme "catppuccin-mocha"

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.clipboard:append("unnamedplus")
vim.opt.foldlevelstart = 50
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

local telescope_builtin = require("telescope.builtin")

require("lualine").setup()
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "basedpyright", "pylsp", "bashls" }
})
vim.lsp.config("basedpyright", {
  settings = {
    basedpyright = {
      typeCheckingMode = "off",
      disableOrganizeImports = true,
    }
  },
  handlers = {
    ["textDocument/publishDiagnostics"] = function() end,
  },
  }
)
require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {}
    }
  }
}
require("telescope").load_extension("ui-select")
vim.diagnostic.config({
  virtual_text = true,
  update_in_insert = true
})
vim.lsp.config("gdscript", {
  name = "godot",
  cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
})

require'nvim-treesitter'.install { 'rust', 'javascript', 'gdscript' }
vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.wo[0][0].foldmethod = 'expr'

vim.keymap.set('n', '<C-p>', telescope_builtin.find_files, {})
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal right<CR>', {})
vim.keymap.set('n', '<C-,>', ':Neotree close<CR>', {})
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set({'n', 'v'}, '<space>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('i', '<S-Tab>', '<C-o>A', {})
vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, {})

