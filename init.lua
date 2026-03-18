require_dir = function(dir)
    local full_path = vim.fn.stdpath("config") .. "/lua/" .. dir:gsub("%.", "/")
    for name, type in vim.fs.dir(full_path) do
        if type == "file" and name:match("%.lua$") then
            require(dir .. "." .. name:sub(1, -5))
        end
    end
end

vim.opt.termguicolors = true

require('pack_changed_callbacks')

require_dir("plugins")

vim.cmd("source " .. vim.fn.stdpath("config") .. "/rc.vim")

require("mappings")
