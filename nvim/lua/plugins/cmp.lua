return {
	{}
}
-- local M = {
-- 	"hrsh7th/nvim-cmp",
-- 	dependencies = {
-- 		"hrsh7th/cmp-nvim-lsp",
-- 		"hrsh7th/cmp-nvim-lua",
-- 		"hrsh7th/cmp-buffer",
-- 		"hrsh7th/cmp-path",
-- 		"hrsh7th/cmp-cmdline",
-- 		"saadparwaiz1/cmp_luasnip",
-- 		"L3MON4D3/LuaSnip",
-- 		"hrsh7th/cmp-nvim-lsp",
-- 	}
-- }

-- -- todo

-- M.config = function()
-- --[[ 	local lspconfig = require('lspconfig')

-- 	-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
-- 	local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }
-- 	for _, lsp in ipairs(servers) do
-- 	  lspconfig[lsp].setup {
-- 		-- on_attach = my_custom_on_attach,
-- 		capabilities = capabilities,
-- 	  }
-- 	end ]]

-- 	local cmp = require("cmp")
-- 	vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- 	cmp.setup({
-- 		snippet = {
-- 			expand = function(args)
-- 				require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
-- 			end,
-- 		},
-- 		window = {
-- 			-- completion = cmp.config.window.bordered(),
-- 			-- documentation = cmp.config.window.bordered(),
-- 		},
-- 		mapping = cmp.mapping.preset.insert({
-- 			["<C-Space>"] = cmp.mapping.complete(),
-- 			["<C-e>"] = cmp.mapping.abort(),
-- 			["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
-- 			}),
-- 		sources = cmp.config.sources({
-- 			{ name = "nvim_lsp" },
-- 			{ name = "nvim_lua" },
-- 			{ name = "luasnip" }, -- For luasnip users.
-- 			-- { name = "orgmode" },
-- 		}, {
-- 			{ name = "buffer" },
-- 			{ name = "path" },
-- 		}),
-- 	})

-- 	cmp.setup.cmdline(":", {
-- 		mapping = cmp.mapping.preset.cmdline(),
-- 		sources = cmp.config.sources({
-- 			{ name = "path" },
-- 		}, {
-- 			{ name = "cmdline" },
-- 		}),
-- 	})
-- end

-- return M

