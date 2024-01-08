local M =  {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function () 
		require('plugins/treesitter')
	end
}

M.config = function() 
	local configs = require("nvim-treesitter.configs")
	configs.setup({
		ensure_installed = { "c", "lua", "vim", "vimdoc", "markdown", "make" },
		sync_install = true,
		auto_install = true,
		highlight = { enable = true },
		indent = { enable = true },  
	})
end

return M
