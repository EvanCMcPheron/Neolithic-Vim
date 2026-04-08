vim.pack.add {
	{ src = 'https://github.com/ThePrimeagen/harpoon', version = 'harpoon2', commit = 'e76cb03' }
}

Harpoon = require("harpoon")

Harpoon:setup {
	settings = {
		save_on_toggle = true,
		sync_on_ui_close = true
	}
}

vim.api.nvim_create_autocmd("DirChanged", {
    pattern = "global",
    callback = function()
    end,
})
