-- In case I want to do anything with a combo
local km = require('mini.keymap')
local map_multistep = km.map_multistep
local map_combo = km.map_combo

local esc_it = "<C-\\><C-n>" -- This escapes both terminal and insert mode, so it should be used instead of <Esc>

local snacks_picker_conf = require("snacks-picker-conf")
Snacks = require("snacks")

require('which-key').add {
	-- MISC insert mode mappings
	{
		mode = { "i", "t" },
		{ '<C-BS>', '<C-w>',                    desc = "Delete word with Ctrl-Backspace" },
		{ '<C-k>',  vim.lsp.buf.signature_help, desc = "Delete word with Ctrl-Backspace" },
	},

	{
		mode = { "n" }, -- would be terminal mode too, but that bricks the bindings of lazygit
		{ "]]", function() Snacks.words.jump(vim.v.count1) end,  desc = "Next Reference" },
		{ "[[", function() Snacks.words.jump(-vim.v.count1) end, desc = "Prev Reference" },
	},

	{
		mode = { "n", "v" },
		-- Which-Key
		{ "<leader>?",  function() Snacks.picker.keymaps() end,                                      desc = "Find Bindings" },

		-- LSP bindings
		{ "<leader>c",  desc = "LSP Mappings" },
		{ "<leader>cr", vim.lsp.buf.rename,                                                          desc = "Rename symbol" },
		{ "<leader>ca", vim.lsp.buf.code_action,                                                     desc = "Code action" },
		{ "<leader>ce", vim.diagnostic.open_float,                                                   desc = "Line diagnostics" },
		{ "<leader>cf", vim.lsp.buf.format,                                                          desc = "Code Format" },
		{ "gd",         function() Snacks.picker.lsp_definitions() end,                              desc = "Goto Definition" },
		{ "gD",         function() Snacks.picker.lsp_declarations() end,                             desc = "Goto Declaration" },
		{ "gr",         function() Snacks.picker.lsp_references() end,                               nowait = true,                          desc = "References" },
		{ "gI",         function() Snacks.picker.lsp_implementations() end,                          desc = "Goto Implementation" },
		{ "gy",         function() Snacks.picker.lsp_type_definitions() end,                         desc = "Goto T[y]pe Definition" },
		{ "gai",        function() Snacks.picker.lsp_incoming_calls() end,                           desc = "C[a]lls Incoming" },
		{ "gao",        function() Snacks.picker.lsp_outgoing_calls() end,                           desc = "C[a]lls Outgoing" },
		{ "K",          vim.lsp.buf.hover,                                                           desc = "Hover" },
		{ "[d",         vim.diagnostic.goto_prev,                                                    desc = "Prev diagnostic" },
		{ "]d",         vim.diagnostic.goto_next,                                                    desc = "Next diagnostic" },

		-- snacks bindings
		{ "<leader>u",  desc = "Settings" },
		{ "<leader>/",  function() Snacks.picker.grep(snacks_picker_conf) end,                       desc = "Live Grep" },
		{ "<leader>:",  function() Snacks.picker.command_history(snacks_picker_conf) end,            desc = "Search Command History" },
		{ "<leader>f",  desc = "Find" },
		{ "<leader>ff", function() Snacks.picker.files(snacks_picker_conf) end,                      desc = "Find Files" },
		{ "<leader>fe", function() Snacks.explorer() end,                                            desc = "File Explorer" },
		{ "<leader>fb", function() Snacks.picker.buffers(snacks_picker_conf) end,                    desc = "Find Buffers" },
		{ "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end,      desc = "Find Config File" },
		{ "<leader>fg", function() Snacks.picker.git_log() end,                                      desc = "Find Git Log" },
		{ "<leader>fh", function() Snacks.picker.help() end,                                         desc = "Find Help Pages" },
		{ "<leader>fH", function() Snacks.picker.man() end,                                          desc = "Find Man Pages" },
		{ "<leader>fm", function() Snacks.picker.marks() end,                                        desc = "Find Marks" },
		{ "<leader>fi", function() Snacks.picker.icons() end,                                        desc = "Find Icons / Emojis" },
		{ "<leader>fc", function() Snacks.picker.colorschemes() end,                                 desc = "Find Colorschemes" },
		{ "<leader>fr", function() Snacks.picker.registers() end,                                    desc = "Find Registers" },
		{ "<leader>fd", function() Snacks.picker.diagnostics() end,                                  desc = "Find Diagnostics" },

		{ "<leader>d",  desc = "Destruction and the likes" },
		{ "<leader>dn", function() require("notify").dismiss({ silent = true, pending = true }) end, desc = "Destroy Current Notifications" },
		{ "<leader>dd", function() Snacks.bufdelete() end,                                           desc = "Destroy Current Buffer" },

		-- Theme Switching (light / dark)
		{ "<leader>ub", require("darklight").color_switch,                                           desc = "Switch from Light to Dark Mode" },

		-- Terminal Stuff
		{ "<leader>t",  desc = "Terminal Bindings" },
		{ "<leader>tg", function() Snacks.lazygit() end,                                             desc = "LazyGit" },
		{ "<leader>to", "<cmd>ToggleTerm size=60 direction=vertical<CR>",                            desc = "Toggle Vertical Terminal" },
		{ "<leader>tO", "<cmd>TermNew size=60 direction=vertical<CR>",                               desc = "New Vertical Terminal" },
		{ "<leader>tf", "<cmd>ToggleTerm size=60 direction=float<CR>",                               desc = "Toggle Floating Terminal" },
		{ "<leader>tF", "<cmd>TermNew size=60 direction=float<CR>",                                  desc = "New Floating Terminal" },
		-- Terminal Focusing
		{ "<leader>tt", "<cmd>TermSelect<CR>",                                                       desc = "Select Terminal" },
		-- Sending Selction to Terminal
		{ "<leader>t1", "<cmd>ToggleTermSendVisualSelection 1<CR>",                                  desc = "Send Selection to Terminal",    mode = { "v" } },
		{ "<leader>t2", "<cmd>ToggleTermSendVisualSelection 2<CR>",                                  desc = "Send Selection to Terminal",    mode = { "v" } },
		{ "<leader>t3", "<cmd>ToggleTermSendVisualSelection 3<CR>",                                  desc = "Send Selection to Terminal",    mode = { "v" } },
		{ "<leader>t4", "<cmd>ToggleTermSendVisualSelection 4<CR>",                                  desc = "Send Selection to Terminal",    mode = { "v" } },
		{ "<leader>t5", "<cmd>ToggleTermSendVisualSelection 5<CR>",                                  desc = "Send Selection to Terminal",    mode = { "v" } },
		{ "<leader>t6", "<cmd>ToggleTermSendVisualSelection 6<CR>",                                  desc = "Send Selection to Terminal",    mode = { "v" } },
		{ "<leader>t7", "<cmd>ToggleTermSendVisualSelection 7<CR>",                                  desc = "Send Selection to Terminal",    mode = { "v" } },
		{ "<leader>t8", "<cmd>ToggleTermSendVisualSelection 8<CR>",                                  desc = "Send Selection to Terminal",    mode = { "v" } },
		{ "<leader>t9", "<cmd>ToggleTermSendVisualSelection 9<CR>",                                  desc = "Send Selection to Terminal",    mode = { "v" } },
	},

	{
		mode = { "i", "t", "n", "v" },
		{ "<C-o>",   esc_it,                                    desc = "Escape termnal" },
		-- move windows
		{ "<A-l>",   esc_it .. "<C-w>l",                        desc = "Move to Right Window" },
		{ "<A-k>",   esc_it .. "<C-w>k",                        desc = "Move to Upper Window" },
		{ "<A-j>",   esc_it .. "<C-w>j",                        desc = "Move to Lower Window" },
		{ "<A-h>",   esc_it .. "<C-w>h",                        desc = "Move to Left Window" },
		-- resize windows
		{ "<C-A-l>", esc_it .. "<cmd>vertical resize -5<CR>",   desc = "Resize Window" },
		{ "<C-A-k>", esc_it .. "<cmd>horizontal resize +2<CR>", desc = "Resize Window" },
		{ "<C-A-j>", esc_it .. "<cmd>horizontal resize -2<CR>", desc = "Resize Window" },
		{ "<C-A-h>", esc_it .. "<cmd>vertical resize +5<CR>",   desc = "Resize Window" },
		-- buffer navigation
		{ "<A-o>",   esc_it .. "<cmd>bnext<CR>",                desc = "Next Buffer" },
		{ "<A-i>",   esc_it .. "<cmd>bprev<CR>",                desc = "Previous Buffer" },
	},
	{
		mode = { "n", "x", "o" },
		{ "s", "<Plug>(leap)", desc = "Leap Around Buffer" },
	}
}

Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
Snacks.toggle.diagnostics():map("<leader>ud")
Snacks.toggle.line_number():map("<leader>ul")
Snacks.toggle.option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 }):map(
	"<leader>uc")
Snacks.toggle.treesitter():map("<leader>uT")
Snacks.toggle.inlay_hints():map("<leader>uh")
Snacks.toggle.indent():map("<leader>ug")
Snacks.toggle.dim():map("<leader>uD")
