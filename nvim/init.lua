-- Neovim Init --
require("config.lazy")
vim.cmd.colorscheme "catppuccin-mocha"

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set foldlevelstart=50")
vim.cmd("set number")
vim.cmd("set relativenumber")

local telescope_builtin = require("telescope.builtin")
local treesitter_builtin = require("nvim-treesitter")

require('lualine').setup()
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

