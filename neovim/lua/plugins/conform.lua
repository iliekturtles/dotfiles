return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {{concat "{"}}{{#if dotter.packages.rust}}
        rust = { "rustfmt", lsp_format = "fallback" },{{/if}}
      },
    },
  },
}
