return {
  -- Onedark theme.
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    opts = {
      style = "darker",
      ending_tildes = true,
      code_style = {
        comments = "none",
      },
      colors = {
        bg0 = "#16181A",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
  { "folke/which-key.nvim", enabled = false },
  { "saghen/blink.cmp", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  { "folke/flash.nvim", enabled = false },
  { "lewis6991/gitsigns.nvim", enabled = false },
  { "nvim-lualine/lualine.nvim", enabled = false },
  { "nvim-mini/mini.ai", enabled = false },
  { "nvim-mini/mini.pairs", enabled = false },
  { "folke/noice.nvim", enabled = false },
  { "nvim-treesitter/nvim-treesitter", enabled = false },
  { "nvim-treesitter/nvim-treesitter-textobjects", enabled = false },
  { "neovim/nvim-lspconfig", enabled = false },
  { "neovim/nvim-lspconfig", enabled = false },
  { "mfussenegger/nvim-lint", enabled = false },
  { "windwp/nvim-ts-autotag", enabled = false },
  { "folke/persistence.nvim", enabled = false },
  { "folke/snacks.nvim", enabled = false },
  { "folke/todo-comments.nvim", enabled = false },
  { "folke/ts-comments.nvim", enabled = false },
}
