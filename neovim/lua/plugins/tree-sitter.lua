return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {{concat "{"}}{{#if dotter.packages.dotnet}}
                "c_sharp",{{/if}}
                "css",{{#if dotter.packages.fish}}
                "fish",{{/if}}{{#if dotter.packages.git}}
                "git_config",{{/if}}{{#if dotter.packages.dotnet}}
                "razor",{{/if}}{{#if dotter.packages.rust}}
                "rust",{{/if}}
                "scss",
                "sql",
            },
        },
    }
}
