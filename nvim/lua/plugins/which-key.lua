-- Useful plugin to show you pending keybinds.
return {
  'folke/which-key.nvim',
  config = function()
    -- document existing key chains
    require('which-key').register {
      ['<leader>f'] = { name = '󰭎 telescope', _ = 'which_key_ignore' },
    }
    -- register which-key VISUAL mode
    -- required for visual <leader>hs (hunk stage) to work
    require('which-key').register({
      ['<leader>'] = { name = 'VISUAL <leader>' },
      ['<leader>h'] = { 'Git [H]unk' },
    }, { mode = 'v' })
  end
}
