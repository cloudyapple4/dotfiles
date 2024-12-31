return {
    'stevearc/oil.nvim',
    opts = {},
    config = function()
        require("oil").setup({
            skip_confirm_for_simple_edits = true,
            prompt_save_on_select_new_entry = false,
            keymaps = {
                ["g?"] = { "actions.show_help", mode = "n" },
                ["<CR>"] = "actions.select",
                ["<C-s>"] = false,
                ["<C-h>"] = false,
                ["<C-t>"] = false,
                ["<C-p>"] = false,
                ["<C-c>"] = false,
                ["<C-l>"] = false,
                ["-"] = { "actions.parent", mode = "n" },
                ["_"] = false,
                ["`"] = false,
                ["~"] = false,
                ["gs"] = false,
                ["gx"] = false,
                ["g."] = { "actions.toggle_hidden", mode = "n" },
                ["g\\"] = false,
            },
            view_options = {
                show_hidden = true,
            }
        })
        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end,
}
