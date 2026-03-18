vim.pack.add {
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/eliseshaffer/darklight.nvim"
}

local confs = {
	light = {
		theme = "miniautumn",
		statusline = "solarized_light",
	},
	dark = {
		theme = "miniautumn",
		statusline = "everforest"
	}
}

-- Appending the callbacks after because they reference data in conf
-- It works the other way but feels wrong... 🤷‍♂️
confs.light.callback = function()
	require("lualine").setup {
		options = { theme = confs.light.statusline }
	}
	vim.cmd { cmd = 'colorscheme', args = { confs.light.theme } }
	vim.notify()
end

confs.dark.callback = function()
	require("lualine").setup {
		options = { theme = confs.dark.statusline }
	}
	vim.cmd { cmd = 'colorscheme', args = { confs.dark.theme } }
end

require('darklight').setup({
	mode = 'custom', -- Sets darklight to custom mode

	light_mode_callback = confs.light.callback,

	dark_mode_callback = confs.dark.callback,
})
