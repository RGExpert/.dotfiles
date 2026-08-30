return {
    "stevearc/oil.nvim",
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    lazy = false,
    keys = {
        {
            "<leader>pv",
            "<cmd>Oil<cr>",
            desc = "Open parent directory (Oil)",
        },
    },
    config = function()
        require("oil").setup({})

        -- The confirmation popup only accepts y/o to confirm (<Esc> already
        -- cancels), so make <CR> confirm too.
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "oil_preview",
            callback = function(args)
                vim.keymap.set("n", "<CR>", "y", {
                    buffer = args.buf,
                    remap = true,
                    nowait = true,
                    desc = "Confirm (Oil)",
                })
            end,
        })
    end,
}
