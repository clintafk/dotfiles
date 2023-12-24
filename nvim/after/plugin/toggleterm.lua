require("toggleterm").setup {
    function (term)
        if term.direction == "horizontal" then
            return 5
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,


    shade_filetypes = {},
    direction = 'float',
}

vim.keymap.set('n', '<leader>t', vim.cmd.ToggleTerm)
