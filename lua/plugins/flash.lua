-- vim.pack.add {"https://codeberg.org/andyg/leap.nvim"}
vim.pack.add {"https://github.com/folke/flash.nvim"}

require'flash'.setup {
	jump = { autojump = false },
	label = { uppercase = false },
}

