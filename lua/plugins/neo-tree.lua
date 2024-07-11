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
	},
	opts = {
		filesystem = {
			window = {
				mappings = {
					['\\'] = 'close_window',
				},
			},
		},
		source_selector = {
			winbar = true,
			statusline = false
		}
	},
}
