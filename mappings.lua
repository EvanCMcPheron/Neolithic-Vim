 -- In case I want to do anything with a combo
local km = require('mini.keymap')
local map_multistep = km.map_multistep
local map_combo = km.map_combo

local esc_it = "<C-\\><C-n>" -- This escapes both terminal and insert mode, so it should be used instead of <Esc>

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
		{ "<leader>c", desc = "LSP Mappings" },
		{ "<leader>cr", vim.lsp.buf.rename, desc = "Rename symbol" },
		{ "<leader>ca", vim.lsp.buf.code_action, desc = "Code action" },
		{ "<leader>ce", vim.diagnostic.open_float, desc = "Line diagnostics" },
		{ "gd", vim.lsp.buf.definition, desc = "Go to definition" },
		{ "gD", vim.lsp.buf.declaration, desc = "Go to declaration" },
		{ "gr", vim.lsp.buf.references, desc = "References" },
		{ "gi", vim.lsp.buf.implementation, desc = "Implementation" },
		{ "K", vim.lsp.buf.hover, desc = "Hover" },
		{ "[d", vim.diagnostic.goto_prev, desc = "Prev diagnostic" },
		{ "]d", vim.diagnostic.goto_next, desc = "Next diagnostic" },
	},

	{
		mode = {"i", "t", "n", "v"},
		{ "<C-o>", esc_it, desc = "Escape termnal" },
		-- move windows
		{ "<C-l>", esc_it .. "<C-w>l", desc = "Move to Right Window" },
		{ "<C-k>", esc_it .. "<C-w>k", desc = "Move to Upper Window" },
		{ "<C-j>", esc_it .. "<C-w>j", desc = "Move to Lower Window" },
		{ "<C-h>", esc_it .. "<C-w>h", desc = "Move to Left Window" },
		-- resize windows
		{ "<C-A-l>", esc_it .. "<cmd>vertical resize -5<CR>", desc = "Resize Window"},
		{ "<C-A-k>", esc_it .. "<cmd>horizontal resize +2<CR>", desc = "Resize Window"},
		{ "<C-A-j>", esc_it .. "<cmd>horizontal resize -2<CR>", desc = "Resize Window"},
		{ "<C-A-h>", esc_it .. "<cmd>vertical resize +5<CR>", desc = "Resize Window"},
		-- buffer navigation
		{ "<C-A-o>", esc_it .. "<cmd>bnext<CR>", desc = "Next Buffer"},
		{ "<C-A-i>", esc_it .. "<cmd>bprev<CR>", desc = "Previous Buffer"},
	},
}

