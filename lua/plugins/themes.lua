vim.pack.add {
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/eliseshaffer/darklight.nvim",
	"https://github.com/savq/melange-nvim",
	"https://github.com/EdenEast/nightfox.nvim",
}

local confs = {
	light = {
		theme = "dayfox",
		statusline = "auto", -- ironically I found that auto was better than finding my own manually
	},
	dark = {
		theme = "nightfox",
		statusline = "auto"
	},
	default = "dark",

	notifies = true
}

-- Appending the callbacks after because they reference data in conf
-- It works the other way but feels wrong... 🤷‍♂️
confs.light.callback = function()
	require("lualine").setup {
		options = { theme = confs.light.statusline }
	}
	vim.cmd { cmd = 'colorscheme', args = { confs.light.theme } }
	if confs.notifies then
		vim.notify("Switched to Light Mode")
	end
end

confs.dark.callback = function()
	require("lualine").setup {
		options = { theme = confs.dark.statusline }
	}
	vim.cmd { cmd = 'colorscheme', args = { confs.dark.theme } }
	if confs.notifies then
		vim.notify("Switched to Dark Mode")
	end
end


local nf = confs.notifies
confs.notifies = false -- So on initialization it won't notify, then it will after

confs[confs.default].callback()

confs.notifies = nf

require('darklight').setup({
	mode = 'custom',
	light_mode_callback = confs.light.callback,
	dark_mode_callback = confs.dark.callback,
})
