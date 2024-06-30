-- Distraction-free coding for Neovim
return {
	'folke/zen-mode.nvim',
	config = function()
		vim.keymap.set('n', '<leader>tz', vim.cmd.ZenMode, { desc = '[T]oggle [Z]en Mode' })
	end,
}
