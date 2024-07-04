--[[
	If you don't know anything about Lua, I recommend taking some time to read through
	a guide. One possible example which will only take 10-15 minutes:
	- https://learnxinyminutes.com/docs/lua/

	After understanding a bit more about Lua, you can use `:help lua-guide` as a
	reference for how Neovim integrates Lua.
	- :help lua-guide
	- (or HTML version): https://neovim.io/doc/user/lua-guide.html

	Next, run AND READ `:help`.
	This will open up a help window with some basic information
	about reading, navigating and searching the builtin help documentation.
--]]

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Setting options ]]

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'

vim.opt.showmode = false

vim.opt.clipboard = 'unnamedplus'

vim.opt.breakindent = true

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 250

vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '▏ ', trail = '·', nbsp = '␣', extends = '▶', precedes = '◀', leadmultispace = '}——→' }

vim.opt.inccommand = 'split'

vim.opt.cursorline = true

vim.opt.scrolloff = 10

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
vim.opt.smartindent = true
vim.opt.foldmethod = 'syntax'
vim.opt.foldenable = false
-- vim.opt.wrap = false
-- vim.opt.backup = false
vim.opt.termguicolors = true

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('v', '<leader>p', '"_dP', { desc = '[P]aste & keep register' })
vim.keymap.set('v', '<leader>d', '"_d', { desc = '[D]elete & keep register' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Move half page [D]own' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Move half page [U]p' })
vim.keymap.set('n', '<C-f>', '<C-f>zz', { desc = 'Move whole page [F]orward' })
vim.keymap.set('n', '<C-b>', '<C-b>zz', { desc = 'Move whole page [B]ackword' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'find next' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'find previous' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
	vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup 'plugins'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2
