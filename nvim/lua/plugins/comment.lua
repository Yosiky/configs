-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
local M = {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
		ignore = '^$'
    },
    lazy = false,
} 

return M
