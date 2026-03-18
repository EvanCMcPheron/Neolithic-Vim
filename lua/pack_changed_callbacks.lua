-- Note, doesn't work, had to use pre-built binary >:(
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
	local name = ev.data.spec.name
    local kind = ev.data.kind

    if name == 'blink.cmp' and (kind == 'install' or kind == 'update') then
      vim.system({ 'cargo', 'build', '--release' }, { cwd = ev.data.path })
    end

  end
})

