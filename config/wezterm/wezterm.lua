local wezterm = require 'wezterm'
local color_scheme = require 'color_scheme'
local tab_bar = require 'tab_bar'
local get_font = require 'get_font'
local keys = require 'keys'

local config = wezterm.config_builder()

-- Show which key table is active in the status area
-- TODO: style this, it's currently black
wezterm.on('update-right-status', function(window, pane)
    local name = window:active_key_table()
    if name then
        name = 'TABLE: ' .. name
    end
    window:set_right_status(name or '')
end)

color_scheme.apply_to_config(config)
tab_bar.apply_to_config(config)
keys.apply_to_config(config)
config.font = get_font()
config.font_size = 14

-- Don't ask for confirmation when closing windows
config.window_close_confirmation = 'NeverPrompt'

return config
