--[[
return {
    'catppuccin/nvim',
    config = function()
        require('catppuccin').setup({
            no_italic = true
        })

        vim.cmd.colorscheme('catppuccin')
        vim.o.background = 'dark'
    end
}
--]]

return {
    'Mofiqul/vscode.nvim',
    config = function()
        require('vscode').setup({
            transparent = true,
            italic_comments = true,
        });
        vim.cmd.colorscheme('vscode')
        vim.o.background = 'dark'
    end
}
