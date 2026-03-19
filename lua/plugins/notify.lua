vim.pack.add{
	"https://github.com/rcarriga/nvim-notify"
}

require('notify').setup {
	fps = 30,
	render = 'default',
	timeout = 3000,
	stages = 'slide'
}

vim.notify = require('notify').notify
