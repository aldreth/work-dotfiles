local wezterm = require 'wezterm'
local mux = wezterm.mux

local color_scheme = require 'color_scheme'
local tab_bar = require 'tab_bar'
local get_font = require 'get_font'
local keys = require 'keys'

local cache_dir = os.getenv('HOME') .. '/.cache/wezterm/'
local window_size_cache_path = cache_dir .. 'window_size_cache.txt'

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

-- Resize to last window size on startup
wezterm.on('gui-startup', function()
    os.execute('mkdir ' .. cache_dir)

    local window_size_cache_file = io.open(window_size_cache_path, 'r')
    if window_size_cache_file ~= nil then
        _, _, width, height = string.find(window_size_cache_file:read(), '(%d+),(%d+)')
        mux.spawn_window {
            width = tonumber(width),
            height = tonumber(height)
        }
        window_size_cache_file:close()
    else
        local tab, pane, window = mux.spawn_window {}
        window:gui_window():maximize()
    end
end)

-- Save window size on resize
wezterm.on('window-resized', function(window, pane)
    local window_size_cache_file = io.open(window_size_cache_path, 'r')
    if window_size_cache_file == nil then
        local tab_size = pane:tab():get_size()
        cols = tab_size['cols']
        rows = tab_size['rows'] + 2 -- Without adding the 2 here, the window doesn't maximize
        contents = string.format('%d,%d', cols, rows)
        window_size_cache_file = assert(io.open(window_size_cache_path, 'w'))
        window_size_cache_file:write(contents)
        window_size_cache_file:close()
    end
end)

color_scheme.apply_to_config(config)
tab_bar.apply_to_config(config)
keys.apply_to_config(config)
config.font = get_font()
config.font_size = 14

-- Don't ask for confirmation when closing windows
config.window_close_confirmation = 'NeverPrompt'

return config
