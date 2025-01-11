local wezterm = require "wezterm"
local act = wezterm.action
local config = {}

-- APPEARENCE
config.default_cursor_style = "BlinkingBar" -- SteadyBlock | BlinkingBlock | SteadyUnderline | BlinkingUnderline | SteadyBar | BlinkingBar
config.cursor_blink_rate = 1 
config.cursor_blink_ease_in = "Linear" 
config.cursor_blink_ease_out = "Linear" 

-- config.enable_scroll_bar = true

-- config.hide_mouse_cursor_when_typing = false

-- enable_tab_bar = false
-- config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false 
config.tab_bar_at_bottom = true
 
config.window_background_opacity = 0.95

config.font = wezterm.font 'JetBrainsMono Nerd Font'
-- config.color_scheme = 'Catppuccin Mocha'
-- config.color_scheme = 'rose-pine-moon'
config.color_scheme = 'Vs Code Dark+ (Gogh)'

config.inactive_pane_hsb = {
  saturation = 0.5,
  brightness = 0.5,
}

config.adjust_window_size_when_changing_font_size = false
config.window_decorations = 'TITLE | RESIZE'
config.window_padding = {
  left = 5,
  right = 0,
  top = 5, 
  bottom = 0,
}

config.default_prog = { 'pwsh.exe', '-NoLogo'}

config.leader = { key = ' ', mods = 'CTRL', timeout_milliseconds = 2000, }

config.keys = {

  { key = 'b', mods = 'ALT', action = act.RotatePanes 'CounterClockwise'},
  { key = 'n', mods = 'ALT', action = act.RotatePanes 'Clockwise' },
  { key = 'v', mods = 'ALT', action = act.SplitHorizontal },
  { key = 's', mods = 'ALT', action = act.SplitVertical },

  { key = 'h', mods = 'ALT', action = act.ActivatePaneDirection 'Left'},
  { key = 'j', mods = 'ALT', action = act.ActivatePaneDirection 'Down'},
  { key = 'k', mods = 'ALT', action = act.ActivatePaneDirection 'Up'},
  { key = 'l', mods = 'ALT', action = act.ActivatePaneDirection 'Right'},

  -- { key = 'w', mods = 'CTRL', action = act.ActivateKeyTable { name = "panes" }},
}

-- config.key_tables = {
--     panes = {
--       { key = 'h', action = act.ActivatePaneDirection 'Left'},
--       { key = 'j', action = act.ActivatePaneDirection 'Down'},
--       { key = 'k', action = act.ActivatePaneDirection 'Up'},
--       { key = 'l', action = act.ActivatePaneDirection 'Right'},
--     }
-- }

return config
