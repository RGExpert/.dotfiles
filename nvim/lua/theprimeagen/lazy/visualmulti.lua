
return {
    "mg979/vim-visual-multi",

    config = function()
        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end
}

