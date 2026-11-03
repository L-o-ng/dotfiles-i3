return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	keys = {
		{ "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
		{ "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
		{ "<leader>bp", "<cmd>BufferLineTogglePin<cr>", desc = "Toggle pin" },
		{ "<space>bo", "<cmd>BufferLineCloseOthers<cr>", desc = "Close other buffers" },
        { "<space>x", "<cmd>bdelete!<cr>", desc = "Close Buffer" },
	},
	opts = {
		options = {
			diagnostics = "nvim_lsp",
			always_show_bufferline = false,
			separator_style = "thin",
		},
	},
}
