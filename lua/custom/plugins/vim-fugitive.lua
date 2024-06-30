-- 'The premier Vim plugin for Git'
return {
	'tpope/vim-fugitive',
	config = function()
		vim.keymap.set('n', '<leader>tf', vim.cmd.G, { desc = '[T]oggle [F]ugitive' })
	end,
}
