local M = {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}

M.config = function()
	vim.cmd[[colorscheme tokyonight-storm]]
	--vim.cmd[[colorscheme tokyonight-day]]
	--vim.cmd[[colorscheme tokyonight-night]]
	--vim.cmd[[colorscheme tokyonight-moon]]
end

return M
