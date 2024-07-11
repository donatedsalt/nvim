return { -- buffer line
	'akinsho/bufferline.nvim',
	dependencies = 'nvim-tree/nvim-web-devicons',
	event = 'VimEnter',
	keys = {
		{ '[b', '<Cmd>BufferLineCyclePrev<CR>', desc = 'Prev [B]uffer' },
		{ ']b', '<Cmd>BufferLineCycleNext<CR>', desc = 'Next [B]uffer' },

		{ '<leader><Tab>', '<C-6>', desc = 'Goto Last Active Buffer' },
		{ '<M-6>', '<C-6>', desc = 'Goto Last Active Buffer' },
		{ '<M-1>', '<Cmd>BufferLineGoToBuffer 1<CR>', desc = 'Goto Buffer 1' },
		{ '<M-2>', '<Cmd>BufferLineGoToBuffer 2<CR>', desc = 'Goto Buffer 2' },
		{ '<M-3>', '<Cmd>BufferLineGoToBuffer 3<CR>', desc = 'Goto Buffer 3' },
		{ '<M-4>', '<Cmd>BufferLineGoToBuffer 4<CR>', desc = 'Goto Buffer 4' },
		{ '<M-5>', '<Cmd>BufferLineGoToBuffer 5<CR>', desc = 'Goto Buffer 5' },
		{ '<M-5>', '<Cmd>BufferLineGoToBuffer 5<CR>', desc = 'Goto Buffer 5' },

		{ '<leader>l', '', desc = 'Buffer[L]ine' },
		{ '<leader>lp', '<Cmd>BufferLineTogglePin<CR>', desc = 'Toggle [P]in' },
		{ '<leader>lP', '<Cmd>BufferLineGroupClose ungrouped<CR>', desc = 'Delete Non-[P]inned Buffers' },
		{ '<leader>lr', '<Cmd>BufferLineCloseRight<CR>', desc = 'Delete Buffers to the [R]ight' },
		{ '<leader>ll', '<Cmd>BufferLineCloseLeft<CR>', desc = 'Delete Buffers to the [L]eft' },
		{ '<leader>lo', '<Cmd>BufferLineCloseOthers<CR>', desc = 'Delete [O]ther Buffers' },
	},
	opts = {
		options = {
			offsets = {
				always_show_bufferline = false,
				{
					filetype = 'neo-tree',
					text = 'Neo-tree',
					highlight = 'Pmenu',
					text_align = 'left',
				},
			},
		},
	},
}
