return {
    { "numToStr/Comment.nvim", opts = {} },

    {
        "lewis6991/gitsigns.nvim",
        opts = {
            signs = {
                add = { text = "+" },
                change = { text = "~" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
            },
        },
    },
    { 'stevearc/oil.nvim', opts = {},
        config = function()
            require("oil").setup({
                view_options = {
                    show_hidden = true,
                }
            })
            vim.keymap.set("n", "\\", "<CMD>Oil<CR>", { desc = "Open parent directory" })
        end,
    }
}
