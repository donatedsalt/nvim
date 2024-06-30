-- Visualize file undo history in a tree structure
return {
	'mbbill/undotree',
	config = function()
		vim.keymap.set('n', '<leader>tu', vim.cmd.UndotreeToggle, { desc = '[T]oggle [U]ndotree' })
	end,
}
