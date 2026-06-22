-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.g.ai_cmp = false
vim.g.maplocalleader = ","
vim.g.snacks_animate = false

vim.opt.colorcolumn = vim.iter(range(101, 255)):join(",")
vim.o.laststatus = 2
vim.opt.listchars = {
    tab = "→ ",
    space = "·",
    trail = "·",
    nbsp = "·",
}
vim.o.number = false
vim.o.relativenumber = false
vim.o.scrolloff = 5
vim.o.shiftwidth = 4
vim.o.tabstop = 4

if vim.g.neovide then
    require("config.neovide")
end
