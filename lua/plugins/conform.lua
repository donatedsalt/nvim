return { -- Autoformat
	'stevearc/conform.nvim',
	lazy = false,
	keys = {
		{
			'<leader>f',
			function()
				require('conform').format { async = true, lsp_fallback = true }
			end,
			mode = '',
			desc = '[F]ormat buffer',
		},
	},
	opts = {
		notify_on_error = false,
		format_on_save = function(bufnr)
			local disable_filetypes = { c = true, cpp = true }
			return {
				timeout_ms = 500,
				lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
			}
		end,
		formatters_by_ft = {
			lua = { 'stylua' },
			python = { 'isort', 'black' },
			javascript = { { 'prettierd', 'prettier' } },
			html = { { 'prettierd', 'prettier' } },
			css = { { 'prettierd', 'prettier' } },
			['*'] = { 'injected', 'codespell'},
			["_"] = { "trim_whitespace" },
		},
	},
	config = function()
		require('conform').setup {
			formatters = {
				yamlfix = {
					command = 'local/path/yamlfix',
					env = {
						YAMLFIX_SEQUENCE_STYLE = 'block_style',
					},
				},
				prettierd = {
					command = '--use-tabs --single-quote --print-width 120',
				},
				prettier = {
					command = '--use-tabs --single-quote --print-width 120',
				}
			},
		}
	end,
}
