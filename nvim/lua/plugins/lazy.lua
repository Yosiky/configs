local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	require('plugins/treesitter'),
	require('plugins/telescope'),
	require('plugins/cmp'),
	require('plugins/colorscheme'),
	require('plugins/neo-tree'),
	-- require('plugins/trouble'),
	require('plugins/nvim-autopairs'),
	require('plugins/comment'),
	require('plugins/lualine'),
	require('plugins/illuminate'),
	require('plugins/todo-comments'),
	require('plugins/indent-blankline'),
	-- { 'neovim/nvim-lspconfig' },
	-- { 'williamboman/nvim-lsp-installer' },
	-- TODO: need to install lsp. { "folke/neodev.nvim", opts = {} } 
	-- TODO: right now it's not working. require('plugins/lspconfig')
})
