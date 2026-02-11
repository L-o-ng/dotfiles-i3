-- Neovim Init --
require("config.lazy")
vim.cmd.colorscheme "catppuccin-mocha"

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.clipboard:append("unnamedplus")
vim.opt.foldlevelstart = 50
vim.opt.number = true
vim.opt.relativenumber = true

local telescope_builtin = require("telescope.builtin")
local treesitter_builtin = require("nvim-treesitter")

require("lualine").setup()
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls" }
})
require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {}
    }
  }
}
require("telescope").load_extension("ui-select")

vim.diagnostic.config({
  virtual_text = true
})
treesitter_builtin.setup { install_dir = vim.fn.stdpath('data') .. '/site' }
treesitter_builtin.install = { "lua", "rust", "c" }
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua', 'rs', 'c', 'h' },
  callback = function() vim.treesitter.start() end,
})
vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.wo[0][0].foldmethod = 'expr'

vim.keymap.set('n', '<C-p>', telescope_builtin.find_files, {})
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal right<CR>', {})
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set({'n', 'v'}, '<space>ca', vim.lsp.buf.code_action, {})

