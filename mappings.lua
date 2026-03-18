 -- In case I want to do anything with a combo
local km = require('mini.keymap')
local map_multistep = km.map_multistep
local map_combo = km.map_combo

require('which-key').add{
	 -- MISC insert mode mappings
	{
		mode = {"i", "t"},
		{ '<C-BS>', '<C-w>', desc = "Delete word with Ctrl-Backspace"},
	},

	{
		mode = {"n", "v"},
		-- Which-Key
		{ "<leader>?", function() require("which-key").show{global=false} end, desc = "Show Bindings" },

		-- LSP bindings
		{ "gd", vim.lsp.buf.definition, desc = "Go to definition" },
		{ "gD", vim.lsp.buf.declaration, desc = "Go to declaration" },
		{ "gr", vim.lsp.buf.references, desc = "References" },
		{ "gi", vim.lsp.buf.implementation, desc = "Implementation" },
		{ "K", vim.lsp.buf.hover, desc = "Hover" },
		{ "<leader>rn", vim.lsp.buf.rename, desc = "Rename symbol" },
		{ "<leader>ca", vim.lsp.buf.code_action, desc = "Code action" },
		{ "[d", vim.diagnostic.goto_prev, desc = "Prev diagnostic" },
		{ "]d", vim.diagnostic.goto_next, desc = "Next diagnostic" },
		{ "<leader>e", vim.diagnostic.open_float, desc = "Line diagnostics" },
	},
}

