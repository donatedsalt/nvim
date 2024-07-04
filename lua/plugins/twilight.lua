return { -- Dims inactive portions of the code
	'folke/twilight.nvim',
	config = function()
		vim.keymap.set('n', '<leader>tt', vim.cmd.Twilight, { desc = '[T]oggle [T]wilight' })
	end,
}
