-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
Snacks.toggle.zoom():map("<M-z>")

-- Remap ,, to ,'s original functionality.
vim.keymap.set("n", "<localleader>,", ",", { desc = "Repeat reverse find", remap = false })

-- Swap p and P's functionality.
vim.keymap.set("v", "p", "P", { desc = "Replace (no yank)", remap = false })
vim.keymap.set("v", "P", "p", { desc = "Replace (yank)", remap = false })

-- Map c/d/s/x to operate without yanking and <localleader> to yank.
for key, desc in pairs({
        ["c"] = "Change",
        ["d"] = "Delete",
        ["s"] = "Substitute",
        ["x"] = "Delete character",
    }) do
    for _, f in ipairs({ function(v) return v end, string.toupper, }) do
        local k = f(key)

        vim.keymap.set({ "n", "v" }, k, function() return reg() .. k end, { desc = desc .. " (no yank)", expr = true, remap = false })
        vim.keymap.set({ "n", "v" }, "<localleader>" .. k, k, { desc = desc .. " (yank)", remap = false })
    end
end

-- Return blackhole register unless a specific register is selected.
function reg()
    local r = vim.v.register == "+" and '"_' or ""

    return r
end
