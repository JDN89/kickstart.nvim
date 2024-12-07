return {
	'echasnovski/mini.nvim',
	--conditionnaly turn on or off
	    enabled =true,
	config = function()
		local statusline = require 'mini.statusline'
		statusline.setup {use_icons =true}
		local pairs = require 'mini.pairs'
		pairs.setup{}

	end
}

