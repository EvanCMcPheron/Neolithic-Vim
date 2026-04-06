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
		{ "<leader>?",  function() Snacks.picker.keymaps() end,                                 desc = "Find Bindings" },

		-- Coding (mostly lsp) stuff
		{ "<leader>c",  desc = "Coding Tools" },
		{ "<leader>cu", "<cmd>UndotreeToggle<CR>",                                              desc = "Toggle Undo Tree" },
		{ "<leader>cr", vim.lsp.buf.rename,                                                     desc = "Rename symbol" },
		{ "<leader>ca", vim.lsp.buf.code_action,                                                desc = "Code action" },
		{ "<leader>ce", vim.diagnostic.open_float,                                              desc = "Line diagnostics" },
		{ "<leader>cf", vim.lsp.buf.format,                                                     desc = "Code Format" },
		{ "gd",         function() Snacks.picker.lsp_definitions() end,                         desc = "Goto Definition" },
		{ "gD",         function() Snacks.picker.lsp_declarations() end,                        desc = "Goto Declaration" },
		{ "gr",         function() Snacks.picker.lsp_references() end,                          nowait = true,                  desc = "References" },
		{ "gI",         function() Snacks.picker.lsp_implementations() end,                     desc = "Goto Implementation" },
		{ "gy",         function() Snacks.picker.lsp_type_definitions() end,                    desc = "Goto T[y]pe Definition" },
		{ "gai",        function() Snacks.picker.lsp_incoming_calls() end,                      desc = "C[a]lls Incoming" },
		{ "gao",        function() Snacks.picker.lsp_outgoing_calls() end,                      desc = "C[a]lls Outgoing" },
		{ "K",          vim.lsp.buf.hover,                                                      desc = "Hover" },
		{ "[d",         vim.diagnostic.goto_prev,                                               desc = "Prev diagnostic" },
		{ "]d",         vim.diagnostic.goto_next,                                               desc = "Next diagnostic" },

		-- snacks bindings
		{ "<leader>u",  desc = "Settings" },
		{ "<leader>/",  function() Snacks.picker.grep(snacks_picker_conf) end,                  desc = "Live Grep" },
		{ "<leader>:",  function() Snacks.picker.command_history(snacks_picker_conf) end,       desc = "Search Command History" },

		{ "<leader>g",  desc = "Git" },

		{ "<leader>f",  desc = "Find" },
		-- { "<leader>ff", function() Snacks.picker.files(require("confs.snacks").picker.files) end, desc = "Find Files" },
		{ "<leader>ff", "<Plug>(NeuralOpen)",                                                   desc = "Find Files" },
		{ "<leader>fe", function() Snacks.explorer() end,                                       desc = "File Explorer" },
		{ "<leader>fb", function() Snacks.picker.buffers(snacks_picker_conf) end,               desc = "Find Buffers" },
		{ "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
		{ "<leader>fg", function() Snacks.picker.git_log() end,                                 desc = "Find Git Log" },
		{ "<leader>fh", function() Snacks.picker.help() end,                                    desc = "Find Help Pages" },
		{ "<leader>fH", function() Snacks.picker.man() end,                                     desc = "Find Man Pages" },
		{ "<leader>fm", function() Snacks.picker.marks() end,                                   desc = "Find Marks" },
		{ "<leader>fi", function() Snacks.picker.icons() end,                                   desc = "Find Icons / Emojis" },
		{ "<leader>fc", function() Snacks.picker.colorschemes() end,                            desc = "Find Colorschemes" },
		{ "<leader>fr", function() Snacks.picker.registers() end,                               desc = "Find Registers" },
		{ "<leader>fd", function() Snacks.picker.diagnostics() end,                             desc = "Find Diagnostics" },
		{ "<leader>ft",
			function()
				Snacks.picker.todo_comments { keywords = { "TODO", "FIX", "FIXME", "ISSUE", "PROBLEM" } }
			end,
			desc = "Find TODO/FIX/FIXME/ISSUE/PROBLEM Comments" },

		{ "<leader>d",  desc = "Destruction and the likes" },
		{ "<leader>dn", function() require("notify").dismiss({ silent = true, pending = true }) end, desc = "Destroy Current Notifications" },
		{ "<leader>dd", function() Snacks.bufdelete() end,                                           desc = "Destroy Current Buffer" },

		-- Theme Switching (light / dark)
		{ "<leader>ub", require("darklight").color_switch,                                           desc = "Switch from Light to Dark Mode" },

		-- Terminal Stuff
		{ "<leader>t",  desc = "Terminal Bindings" },
		{ "<leader>tg", function() Snacks.lazygit() end,                                             desc = "LazyGit" },
		{ "<leader>to", "<cmd>ToggleTerm size=80 direction=vertical<CR>",                            desc = "Toggle Vertical Terminal" },
		{ "<leader>tO", "<cmd>TermNew size=80 direction=vertical<CR>",                               desc = "New Vertical Terminal" },
		{ "<leader>tf", "<cmd>ToggleTerm size=80 direction=float<CR>",                               desc = "Toggle Floating Terminal" },
		{ "<leader>tF", "<cmd>TermNew size=80 direction=float<CR>",                                  desc = "New Floating Terminal" },
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
		{ "<A-l>",   require("smart-splits").move_cursor_right, desc = "Move to Right Window" },
		{ "<A-k>",   require("smart-splits").move_cursor_up,    desc = "Move to Upper Window" },
		{ "<A-j>",   require("smart-splits").move_cursor_down,  desc = "Move to Lower Window" },
		{ "<A-h>",   require("smart-splits").move_cursor_left,  desc = "Move to Left Window" },
		-- resize windows
		{ "<C-A-l>", require("smart-splits").resize_right,      desc = "Resize Window Right" },
		{ "<C-A-k>", require("smart-splits").resize_up,         desc = "Resize Window Up" },
		{ "<C-A-j>", require("smart-splits").resize_down,       desc = "Resize Window Down" },
		{ "<C-A-h>", require("smart-splits").resize_left,       desc = "Resize Window Left" },
		-- swap windows
		{ "<A-S-l>", require("smart-splits").swap_buf_right,    desc = "Swap Window Right" },
		{ "<A-S-k>", require("smart-splits").swap_buf_up,       desc = "Swap Window Up" },
		{ "<A-S-j>", require("smart-splits").swap_buf_down,     desc = "Swap Window Down" },
		{ "<A-S-h>", require("smart-splits").swap_buf_left,     desc = "Swap Window Left" },
		-- buffer navigation
		{ "<A-o>",   esc_it .. "<cmd>bnext<CR>",                desc = "Next Buffer" },
		{ "<A-i>",   esc_it .. "<cmd>bprev<CR>",                desc = "Previous Buffer" },
	},
	{
		mode = { "n", "x", "o" },
		{ "s", require('flash').remote,     desc = "Leap" },
		{ "S", require('flash').treesitter, desc = "Select Treesitter" },
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
