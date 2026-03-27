
local default_scale = 0.5788
if vim.loop.os_uname().sysname == 'Linux' then
	default_scale = 0.8
end

if vim.g.neovide then
	vim.keymap.set('n', '<A-f>', '<cmd>lua vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen') -- Paste normal mode
	vim.keymap.set('i', '<A-f>', '<cmd>lua vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen') -- Paste normal mode
	if vim.loop.os_uname().sysname ~= 'Linux' then
		vim.g.neovide_fullscreen = true
	end
	vim.o.guifont =
	"FiraCode Nerd Font:h12"                        -- 3270 Nerd Font Mono:h14  -- Alternative
	vim.keymap.set('v', '<C-S-c>', '"+y')           -- Copy
	vim.keymap.set('i', '<C-S-v>', '<C-r>+')     -- Paste visual mode
	vim.keymap.set('t', '<C-S-v>', '<C-\\><C-n>"+pa') -- Paste insert mode
	vim.g.neovide_scale_factor = default_scale
	local change_scale_factor = function(delta)
		vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
	end
	vim.keymap.set("n", "<C-=>", function()
		change_scale_factor(1.05)
	end)
	vim.keymap.set("n", "<C-->", function()
		change_scale_factor(1 / 1.05)
	end)
	vim.keymap.set("n", "<C-0>", function()
		vim.g.neovide_scale_factor = default_scale
	end)
end

