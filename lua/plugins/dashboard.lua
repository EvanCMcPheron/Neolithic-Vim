vim.pack.add { "https://github.com/nvimdev/dashboard-nvim" }

local choose = function()
	math.randomseed(os.time())
	math.random(); math.random(); math.random(); math.random(); math.random(); math.random(); math.random(); math.random()
	local rand = math.random(1, 14)
	if rand == 1 then
		return '𝑩𝒐𝒏𝒌 𝒔𝒕𝒖𝒑𝒊𝒅, 𝒃𝒖𝒕 𝒃𝒐𝒏𝒌 𝒖𝒔𝒆 𝑵𝒆𝒐𝒍𝒊𝒕𝒉𝒊𝒄-𝑽𝒊𝒎. 𝑾𝒉𝒂𝒕 𝒔𝒂𝒚 𝒂𝒃𝒐𝒖𝒕 𝒚𝒐𝒖?'
	elseif rand == 2 then
		return '𝑜𝑡h𝑒𝑟 𝑐𝑎𝑣𝑒𝑚𝑎𝑛 𝑢𝑠𝑒 𝑛𝑎𝑛𝑜. 𝐵𝑜𝑛𝑘 𝑛𝑜𝑡 𝑡𝑎𝑙𝑘 𝑡𝑜 𝑡h𝑒𝑚. 𝑁𝑒𝑜𝑙𝑖𝑡h𝑖𝑐-𝑉𝑖𝑚 𝑜𝑛𝑙𝑦.'
	elseif rand == 3 then
		return '𝐵𝑜𝑛𝑘 𝑡𝑟𝑦 𝑞𝑢𝑖𝑡 𝑁𝑒𝑜𝑙𝑖𝑡h𝑖𝑐-𝑉𝑖𝑚. 𝐵𝑜𝑛𝑘 𝑠𝑡𝑖𝑙𝑙 h𝑒𝑟𝑒. 𝐵𝑜𝑛𝑘 𝑎𝑙𝑤𝑎𝑦𝑠 h𝑒𝑟𝑒.'
	elseif rand == 4 then
		return '𝑁𝑜 𝐼𝐷𝐸. 𝑂𝑛𝑙𝑦 𝑁𝑒𝑜𝑙𝑖𝑡h𝑖𝑐-𝑉𝑖𝑚. 𝑂𝑛𝑙𝑦 𝑔𝑟𝑢𝑛𝑡.'
	elseif rand == 5 then
		return '𝐵𝑜𝑛𝑘 h𝑖𝑡 :𝑤𝑞. 𝑅𝑜𝑐𝑘 𝑛𝑜𝑡 𝑠𝑎𝑣𝑒. 𝐵𝑜𝑛𝑘 h𝑖𝑡 𝑟𝑜𝑐𝑘.'
	elseif rand == 6 then
		return '𝑩𝒐𝒏𝒌 𝒉𝒂𝒔 𝒐𝒏𝒆 𝒇𝒓𝒊𝒆𝒏𝒅. 𝑩𝒐𝒏𝒌 𝒍𝒊𝒌𝒆 𝑵𝒆𝒐𝒍𝒊𝒕𝒉𝒊𝒄-𝑽𝒊𝒎.'
	elseif rand == 7 then
		return '𝑩𝒐𝒏𝒌 𝒔𝒕𝒖𝒑𝒊𝒅, 𝒃𝒖𝒕 𝒃𝒐𝒏𝒌 𝒖𝒔𝒆 𝑵𝒆𝒐𝒍𝒊𝒕𝒉𝒊𝒄-𝑽𝒊𝒎. 𝑾𝒉𝒂𝒕 𝒔𝒂𝒚 𝒂𝒃𝒐𝒖𝒕 𝒚𝒐𝒖?'
	elseif rand == 8 then
		return '𝑉𝑆𝐶𝑜𝑑𝑒 𝑢𝑠𝑒𝑟 𝑠𝑎𝑦 𝑁𝑒𝑜𝑙𝑖𝑡h𝑖𝑐-𝑉𝑖𝑚 h𝑎𝑟𝑑. 𝐵𝑜𝑛𝑘 𝑎𝑔𝑟𝑒𝑒. 𝐵𝑜𝑛𝑘 𝑠𝑡𝑖𝑙𝑙 𝑢𝑠𝑒 𝑁𝑒𝑜𝑙𝑖𝑡h𝑖𝑐-𝑉𝑖𝑚.'
	elseif rand == 9 then
		return '𝑔𝑔 𝑔𝑜 𝑡𝑜𝑝. 𝐺 𝑔𝑜 𝑏𝑜𝑡𝑡𝑜𝑚. 𝐵𝑜𝑛𝑘 𝑢𝑠𝑒 𝑔𝑔𝐺 𝑠𝑒𝑙𝑒𝑐𝑡 𝑎𝑙𝑙. 𝑁𝑒𝑜𝑙𝑖𝑡h𝑖𝑐-𝑉𝑖𝑚 𝑡𝑒𝑎𝑐h 𝐵𝑜𝑛𝑘 𝑤𝑒𝑙𝑙.'
	elseif rand == 10 then
		return '𝑚𝑎𝑐𝑟𝑜? 𝑁𝑒𝑜𝑙𝑖𝑡h𝑖𝑐-𝑉𝑖𝑚 h𝑎𝑣𝑒 𝑚𝑎𝑐𝑟𝑜. 𝐵𝑜𝑛𝑘 𝑝𝑟𝑒𝑠𝑠 𝑞𝑞𝑞... 𝐵𝑜𝑛𝑘 𝑓𝑜𝑟𝑔𝑒𝑡 𝑟𝑒𝑠𝑡.'
	elseif rand == 11 then
		return '𝑜𝑡h𝑒𝑟 𝑐𝑎𝑣𝑒𝑚𝑎𝑛 𝑢𝑠𝑒 𝑛𝑎𝑛𝑜. 𝐵𝑜𝑛𝑘 𝑛𝑜𝑡 𝑡𝑎𝑙𝑘 𝑡𝑜 𝑡h𝑒𝑚. 𝑁𝑒𝑜𝑙𝑖𝑡h𝑖𝑐-𝑉𝑖𝑚 𝑜𝑛𝑙𝑦.'
	elseif rand == 12 then
		return '𝑠𝑝𝑙𝑖𝑡 𝑝𝑎𝑛𝑒 𝑖𝑛 𝑁𝑒𝑜𝑙𝑖𝑡h𝑖𝑐-𝑉𝑖𝑚. 𝑡𝑒𝑟𝑚𝑖𝑛𝑎𝑙 𝑠𝑝𝑙𝑖𝑡. 𝐵𝑜𝑛𝑘 𝑠𝑝𝑙𝑖𝑡 𝑟𝑜𝑐𝑘. 𝐵𝑜𝑛𝑘 𝑚𝑢𝑙𝑡𝑖𝑡𝑎𝑠𝑘.'
	elseif rand == 13 then
		return '𝑢𝑛𝑑𝑜𝑜𝑜𝑜𝑜𝑜? 𝐵𝑜𝑛𝑘 𝑝𝑟𝑒𝑠𝑠 𝑢 𝑚𝑎𝑛𝑦 𝑡𝑖𝑚𝑒 𝑖𝑛 𝑁𝑒𝑜𝑙𝑖𝑡h𝑖𝑐-𝑉𝑖𝑚. 𝐵𝑜𝑛𝑘 𝑢𝑛𝑑𝑜 𝑒𝑛𝑡𝑖𝑟𝑒 𝑐𝑎𝑣𝑒.'
	else -- rand == 14
		return '𝑢𝑛𝑑𝑜𝑜𝑜𝑜𝑜𝑜? 𝐵𝑜𝑛𝑘 𝑝𝑟𝑒𝑠𝑠 𝑢 𝑚𝑎𝑛𝑦 𝑡𝑖𝑚𝑒 𝑖𝑛 𝑁𝑒𝑜𝑙𝑖𝑡h𝑖𝑐-𝑉𝑖𝑚. 𝐵𝑜𝑛𝑘 𝑢𝑛𝑑𝑜 𝑒𝑛𝑡𝑖𝑟𝑒 𝑐𝑎𝑣𝑒.'
	end
end

local stupid_nvim = {
	'',
	'',
	'',
	'',
	'',
	'',
	'',
	'',
	'',
	'',
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡾⠁⠙⢶⣯⣭⣛⣯⡵⣾⣿⡧⣴⣂⣤⡀⡀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣣⡝⠁⠀⠀⠈⠙⠛⠻⢮⣥⣭⣆⣭⣮⣽⣛⠻⣷⡶⢿⣿⣤⣦⣖⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣯⣉⣉⠀⠀⠭⣟⣒⣲⣖⠀⠀⠀⠀⠉⠉⠙⠻⠧⢷⣴⡼⠟⣍⠫⣑⢺⣿⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠑⠢⣀⣼⣿⣿⡝⢳⣶⣶⡤⢤⣤⣤⣤⠤⠀⠀⢯⣋⣳⠀⣾⢥⣾⣿⣶⣅⢢⠹⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠦⣈⡳⢭⣉⣀⡏⠺⠿⠗⠀⢀⡇⠀⠀⠀⠀⠀⠉⠁⠀⠹⣧⣿⣿⣿⣿⡂⢇⣽⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⠶⠚⢋⠓⡛⠛⠿⣦⣄⣀⣴⡾⢗⡀⠀⠀⠀⠀⠀⠀⠀⢰⡟⡘⠿⡿⠿⡑⢌⣾⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⢖⣾⣿⣏⣿⣿⣿⣿⣿⣟⣾⣶⣤⡙⠲⣄⠒⢈⡅⠀⠀⠀⠀⠀⠀⠀⠸⣷⡉⢆⡡⢳⣿⣶⡸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣇⠛⡿⣿⣿⣿⣿⣿⠿⠿⠿⢛⠛⠟⠿⢷⣎⡳⡄⠀⢀⡀⠀⠀⠀⠀⠀⠀⣼⢻⡏⠙⠛⠿⣟⣱⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢙⠒⣶⡶⠶⢂⠄⡘⢠⠃⠌⠒⡨⠐⠂⢴⣠⣿⠀⠀⠉⠀⠀⠀⠀⠀⠀⢿⣍⠛⡃⠜⣲⢬⣙⠻⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠔⣊⡭⢧⡐⡈⡐⠌⢄⡘⢈⠡⠐⡡⠉⠄⣸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⢺⣿⣷⡐⣊⠭⣳⣦⣙⠳⣢⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⢀⣤⣖⣒⣒⠒⠲⠦⠤⠒⣊⡥⠖⠉⠁⠀⠈⢷⡄⡐⡈⠤⢀⠃⠌⢂⠡⠘⣠⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣯⢐⡛⠟⡳⢀⠣⢿⣋⠙⠷⣮⣑⠧⣢⢀⠀⠀⠀⠀⠀⠀⠀]],
	[[⢞⣩⡴⢚⡭⠴⠒⠒⠦⣙⢳⡀⠀⠀⠀⠀⠀⠀⠙⠳⣤⣌⡐⡈⠒⣈⣤⡷⠋⠀⠀⠀⠀⠀⠀⠠⡆⢰⡀⠀⠀⣿⢆⡘⠤⠱⣿⣎⠹⣿⠆⠀⠈⠙⣷⣮⡻⢵⣄⣀⠀⠀⠀⠀]],
	[[⠀⠘⠒⠉⠀⠀⠀⠀⠀⢸⢄⡇⠀⠀⠀⠀⠀⠀⠀⢀⡟⠬⠉⠙⠋⣿⣿⣶⣶⣶⠶⠶⠦⠤⢤⢤⣉⣁⣀⣀⣠⣿⣦⣥⣭⢶⡵⠶⢿⡏⠀⠀⠀⡴⠟⣋⣁⣈⠉⠉⠛⡶⣦⡀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⣘⠶⣤⡀⠘⣹⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠰⢦⠀⠈⣿⠄⣶⣶⡆⠬⡑⢺⣿⠀⠀⠐⣆⡼⠋⠁⠉⠳⡔⣶⡝⢮⣷]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡠⢖⡪⠕⠋⠁⠉⠉⣹⣿⣿⣿⣿⡟⠓⠒⠦⣄⡤⠤⠤⢤⣁⡀⣠⣿⣾⣬⣥⡾⠗⠛⠋⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⢸⡜⢮⠇]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⡒⠒⠒⠒⠉⢠⠞⠉⠀⠀⠀⠀⠀⠠⠿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠀⠀⠙⢌⠳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠞⠁⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠰⣏⡡⠤⠖⠒⠊⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣳⠌⠲⠤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠓⠤⠄⣀⡀⠈⣹⢶⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠒⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	'',
[[░███    ░██                       ░██ ░██   ░██    ░██        ░██                   ░██    ░██ ░██                ]],
[[░████   ░██                       ░██       ░██    ░██                              ░██    ░██                    ]],
[[░██░██  ░██  ░███████   ░███████  ░██ ░██░████████ ░████████  ░██ ░███████          ░██    ░██ ░██░█████████████  ]],
[[░██ ░██ ░██ ░██    ░██ ░██    ░██ ░██ ░██   ░██    ░██    ░██ ░██░██    ░██ ░██████ ░██    ░██ ░██░██   ░██   ░██ ]],
[[░██  ░██░██ ░█████████ ░██    ░██ ░██ ░██   ░██    ░██    ░██ ░██░██                 ░██  ░██  ░██░██   ░██   ░██ ]],
[[░██   ░████ ░██        ░██    ░██ ░██ ░██   ░██    ░██    ░██ ░██░██    ░██           ░██░██   ░██░██   ░██   ░██ ]],
[[░██    ░███  ░███████   ░███████  ░██ ░██    ░████ ░██    ░██ ░██ ░███████             ░███    ░██░██   ░██   ░██ ]],
	'',
	'',
	choose(),
	'',
	'',
}

require("dashboard").setup {
	disable_move = true,
	hide = { statusline = true },
	theme = "doom",
	config = {
		header = stupid_nvim,
		center = {
			{
				icon = ' ',
				icon_hl = '@variable',
				desc = 'All Sessions',
				group = 'Label',
				action = 'AutoSession search',
				key = 'a',
			},
			{
				icon = '󰘛 ',
				icon_hl = '@variable',
				desc = 'Load Session',
				group = 'Label',
				action = 'AutoSession restore',
				key = 's',
			},
			-- {
			--   icon = ' ',
			--   icon_hl = '@variable',
			--   desc = 'Find Files',
			--   group = 'Label',
			--   action = 'Telescope find_files',
			--   key = 'f',
			-- },
			-- {
			--   icon = '󰣉 ',
			--   icon_hl = '@variable',
			--   desc = 'Harpoon',
			--   group = 'label',
			--   action = 'require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())',
			--   key = 'h',
			-- },
			-- {
			-- 	icon = '󱁽 ',
			-- 	icon_hl = '@variable',
			-- 	desc = 'Open File Browser',
			-- 	group = 'label',
			-- 	action = 'NeuralOpen',
			-- 	key = 'b',
			-- },
			-- {
			-- 	icon = ' ',
			-- 	icon_hl = '@variable',
			-- 	desc = 'Open Terminal',
			-- 	group = 'label',
			-- 	action = function()
			-- 		require("terminal.mappings").run(nil, { layout = { open_cmd = "enew" } })()
			-- 	end,
			-- 	key = 't',
			-- },
			-- {
			-- 	icon = '󰇈 ',
			-- 	icon_hl = '@variable',
			-- 	desc = 'Obsidian',
			-- 	group = 'label',
			-- 	action = function()
			-- 		-- load obsidian integration
			-- 		vim.cmd('Lazy load obsidian.nvim')
			--
			-- 		local pickers = require("telescope.pickers")
			-- 		local finders = require("telescope.finders")
			-- 		local actions = require "telescope.actions"
			-- 		local action_state = require "telescope.actions.state"
			--
			-- 		-- Load workspaces outlined in nvim config
			-- 		local workspaces = {}
			-- 		for i, v in ipairs(require 'obsidian_worspaces') do
			-- 			workspaces[i] = v.name
			-- 		end
			--
			-- 		-- use telescope picker to select workspace
			-- 		pickers
			-- 			.new({}, {
			-- 				finder = finders.new_table({
			-- 					results = workspaces,
			-- 				}),
			-- 				attach_mappings = function(prompt_bufnr, _)
			-- 					actions.select_default:replace(function()
			-- 						actions.close(prompt_bufnr)
			-- 						local selection = action_state.get_selected_entry()
			-- 						-- print(selection[1])
			-- 						local ws = require 'obsidian_worspaces'
			-- 						local fp = ''
			-- 						for i, w in ipairs(ws) do
			-- 							if w.name == selection[1] then
			-- 								fp = w.path
			-- 								break
			-- 							end
			-- 						end
			-- 						if fp == '' then
			-- 							vim.notify("Bad obsidian filepath (empty path string found)", "error")
			-- 							return true
			-- 						end
			--
			-- 						vim.cmd('cd ' .. fp)
			-- 						vim.cmd('enew')
			-- 					end)
			-- 					return true
			-- 				end,
			-- 			})
			-- 			:find()
			-- 	end,
			-- 	key = 'o',
			-- },
			-- {
			-- 	icon = ' ',
			-- 	icon_hl = '@variable',
			-- 	desc = 'Godot',
			-- 	group = 'label',
			-- 	action = function()
			-- 		-- set the godot external editor pipe depending on system
			-- 		local addr = './godot.pipe'
			-- 		if vim.fn.has('win32') then
			-- 			addr = '127.0.0.1:6004'
			-- 		end
			-- 		-- Start the godot server connection
			-- 		vim.fn.serverstart(addr)
			-- 		-- Create a new buffer so it doesnt look like nothing changed
			-- 		vim.cmd 'enew | r ! echo "Connected to Godot, open a script in Godot..."'
			-- 	end,
			-- 	key = 'g',
			-- },
			-- Setup godot server listening when open on a godot project
			-- {
			-- 	icon = '󰊪 ',
			-- 	icon_hl = '@variable',
			-- 	desc = 'Leet',
			-- 	group = 'label',
			-- 	action = 'Leet',
			-- 	key = 'l',
			-- },
			-- {
			-- 	desc = '󰊳 Update',
			-- 	group = '@property',
			-- 	action = 'Lazy update',
			-- 	key = 'u'
			-- },
			{
				icon = ' ',
				desc = 'Config',
				group = 'Label',
				action = function()
					vim.cmd("cd " .. vim.fn.stdpath("config"))
					vim.cmd("AutoSession restore")
				end,
				key = 'c',
			},
			{
				icon = '󰗼 ',
				desc = 'Exit',
				action = 'qa',
				key = 'q',
			}
		},
	}
}
return r
