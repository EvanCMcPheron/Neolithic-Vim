require_dir = function(dir)
	local files = io.popen("ls -- " .. dir):lines()
	local suffix_len = 4
	for file in files do
		local local_module = dir .. '.' .. string.sub(file, 0, string.len(file) - suffix_len) 
		require(local_module)
	end
end

vim.opt.termguicolors = true

require('pack_changed_callbacks')

require_dir("plugins")

vim.cmd("source rc.vim")

require("mappings")
