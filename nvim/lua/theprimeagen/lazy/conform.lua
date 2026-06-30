return {
    "stevearc/conform.nvim",
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                vue        = { "prettier" },
                javascript = { "prettier" },
                typescript = { "prettier" },
                json       = { "prettier" },
            },
            format_on_save = function(bufnr)
                local ft = vim.bo[bufnr].filetype

                if vim.tbl_contains({ "vue", "javascript", "json", "typescript" }, ft) then
                    return {
                        timeout_ms = 2000,
                    }
                end
            end
        })
    end,
}
