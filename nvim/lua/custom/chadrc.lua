---@type ChadrcConfig
local M = {}
local opt = vim.opt

M.ui = { theme = 'catppuccin' }
M.plugins = "custom.plugins"
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4

return M
