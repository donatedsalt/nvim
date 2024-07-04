return { -- Neo-tree is a Neovim plugin to browse the file system
	'nvim-neo-tree/neo-tree.nvim',
	version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
		'MunifTanjim/nui.nvim',
		'3rd/image.nvim',
	},
	cmd = 'Neotree',
	keys = {
		{ '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
		{ '<leader>g', ':Neotree float git_status<CR>', { desc = '[G]it status window' } },
	},
	opts = {
		filesystem = {
			window = {
				mappings = {
					['\\'] = 'close_window',
				},
			},
		},
	},
}
