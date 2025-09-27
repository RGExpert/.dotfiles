return {
     {
        'lepture/vim-jinja',
        config = function()
            -- Disable indentation for Jinja templates
            vim.cmd([[
                augroup NoAutoIndentJinja
                    autocmd!
                    autocmd FileType jinja setlocal indentexpr=
                    autocmd FileType jinja setlocal autoindent
                    autocmd FileType jinja setlocal noexpandtab
                augroup END
            ]])
        end
    }
}
