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
    },
    {
        'folke/lazydev.nvim',
        ft = 'lua',
        opts = {
            library = {
                { path = 'luvit-meta/library', words = { 'vim%.uv' } },
            },
        },
    },
    { 'Bilal2453/luvit-meta', lazy = true },
    'tpope/vim-sleuth',
}
