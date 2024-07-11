return {
	"luckasRanarison/tailwind-tools.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	keys = {
		{ '<leader>tc', vim.cmd.TailwindConcealToggle, desc = '[T]oggle Tailwind Class [C]onceal' }
	},
	opts = {}
}
