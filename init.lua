print("my new config")
print("my new config2")

vim.keymap.set("n", "<space><space>x","<cmd>source %<CR>")

-- Map 'jj' to Escape in insert mode
vim.keymap.set("i", "jj", "<Esc>")

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.clipboard = "unnamedplus"


vim.api.nvim_create_autocmd('TextYankPost',{
	desc = 'Highlight when yanking text',
	group = vim.api.nvim_create_augroup('jan-highlight-yank',{clear = true}),
	callback = function()
		vim.highlight.on_yank()
	end,
})
