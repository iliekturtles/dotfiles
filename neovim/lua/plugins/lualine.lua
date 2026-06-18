local mode = require("lualine.utils.mode")
local highlight = require("lualine.highlight")

-- Override mode names to use a fixed width.
mode.map = {
    ["n"]      = " NORMAL ",
    ["no"]     = "OPENDING",
    ["nov"]    = "OPENDING",
    ["noV"]    = "OPENDING",
    ["no\22"]  = "OPENDING",
    ["niI"]    = " NORMAL ",
    ["niR"]    = " NORMAL ",
    ["niV"]    = " NORMAL ",
    ["nt"]     = " NORMAL ",
    ["ntT"]    = " NORMAL ",
    ["v"]      = " VISUAL ",
    ["vs"]     = " VISUAL ",
    ["V"]      = " V-LINE ",
    ["Vs"]     = " V-LINE ",
    ["\22"]    = " V-BLOCK",
    ["\22s"]   = " V-BLOCK",
    ["s"]      = " SELECT ",
    ["S"]      = " S-LINE ",
    ["\19"]    = " S-BLOCK",
    ["i"]      = " INSERT ",
    ["ic"]     = " INSERT ",
    ["ix"]     = " INSERT ",
    ["R"]      = " REPLACE",
    ["Rc"]     = " REPLACE",
    ["Rx"]     = " REPLACE",
    ["Rv"]     = "VREPLACE",
    ["Rvc"]    = "VREPLACE",
    ["Rvx"]    = "VREPLACE",
    ["c"]      = " COMMAND",
    ["cv"]     = "    EX  ",
    ["ce"]     = "    EX  ",
    ["r"]      = " REPLACE",
    ["rm"]     = " -MORE- ",
    ["r?"]     = " CONFIRM",
    ["!"]      = "  SHELL ",
    ["t"]      = "TERMINAL",
}

-- Remap mode names to highlights.
local mode_to_highlight = {
    [" VISUAL "] = "_visual",
    [" V-BLOCK"] = "_visual",
    [" V-LINE "] = "_visual",
    [" SELECT "] = "_visual",
    [" S-LINE "] = "_visual",
    [" S-BLOCK"] = "_visual",
    [" REPLACE"] = "_replace",
    ["VREPLACE"] = "_replace",
    [" INSERT "] = "_insert",
    [" COMMAND"] = "_command",
    ["    EX  "] = "_command",
    [" -MORE- "] = "_command",
    [" CONFIRM"] = "_command",
    ["TERMINAL"] = "_terminal",
}

--- Get highlight suffix for current mode, or inactive if not focused
---@return string mode_suffix
function highlight.get_mode_suffix()
    local m = mode.get_mode()

    return mode_to_highlight[m] or "_normal"
end

local icons = LazyVim.config.icons
local lualine_b = {
    { "filename", path = 1 },
}
local lualine_c = {
    {
        "diagnostics",
        symbols = {
            error = icons.diagnostics.Error,
            warn = icons.diagnostics.Warn,
            info = icons.diagnostics.Info,
            hint = icons.diagnostics.Hint,
        },
    },
}
local lualine_y = {
    "fileformat",
    { "encoding", show_bomb = true, },
    "filetype"
}
local lualine_z = {
    { "progress", separator = " ", padding = { left = 1, right = 0 } },
    { "location", padding = { left = 0, right = 1 } },
}

return {
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            globalstatus = true,
            sections = {
                lualine_b = lualine_b,
                lualine_c = lualine_c,
                lualine_y = lualine_y,
                lualine_z = lualine_z
            },
            inactive_sections = {
                lualine_b = lualine_b,
                lualine_c = {},
                lualine_x = {},
                lualine_y = lualine_y,
                lualine_z = lualine_z,
            },
        },
    }
}
