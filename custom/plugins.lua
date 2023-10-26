local plugins = {

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                -- defaults 
                "lua",

                -- low levels
                "c",

            },
        },
    },


}
return plugins
