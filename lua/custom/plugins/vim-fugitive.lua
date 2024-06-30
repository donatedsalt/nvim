-- 'The premier Vim plugin for Git'
return {
	'tpope/vim-fugitive',
	config = function()
		vim.keymap.set('n', '<leader>g', vim.cmd.G, { desc = '[G]it Fugitive' })
	end,
}
