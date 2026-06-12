return {
    {
        "folke/snacks.nvim",
        opts = {
            -- Disable indent guides.
            indent = { enabled = false },
        },
        keys = {
            -- Resume last picker.
            { "<leader>'", function() Snacks.picker.resume() end, desc = "Resume" },

            -- Disable `background` toggle.
            { "<leader>ub", enabled = false },

            -- Rename lower bindings to (cwd) and upper bindings to (root dir).
            { "<leader>fE", function() Snacks.explorer({ cwd = LazyVim.root() }) end, desc = "Explorer Snacks (root dir)", },
            { "<leader>fe", function() Snacks.explorer() end, desc = "Explorer Snacks (cwd)", },
            { "<leader>E", "<leader>fE", desc = "Explorer Snacks (root dir)", remap = true },
            { "<leader>e", "<leader>fe", desc = "Explorer Snacks (cwd)", remap = true },
            { "<leader>/", LazyVim.pick("grep", { root = false }), desc = "Grep (cwd)" },
            { "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (root dir)" },
            { "<leader>fF", LazyVim.pick("files"), desc = "Find Files (root dir)" },
            { "<leader>ff", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
            { "<leader>fR", LazyVim.pick("oldfiles"), desc = "Recent" },
            { "<leader>fr", function() Snacks.picker.recent({ filter = { cwd = true }}) end, desc = "Recent (cwd)" },
            { "<leader>sG", LazyVim.pick("live_grep"), desc = "Grep (root dir)" },
            { "<leader>sg", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
            { "<leader>sw", LazyVim.pick("grep_word"), desc = "Visual selection or word (root dir)", mode = { "n", "x" } },
            { "<leader>sW", LazyVim.pick("grep_word", { root = false }), desc = "Visual selection or word (cwd)", mode = { "n", "x" } },
        },
    }
}
