local wezterm = require 'wezterm'
local get_appearance = require 'get_appearance'

local module = {}

local function scheme_for_appearance(appearance)
    if appearance:find 'Dark' then
        return 'Solarized Dark (Gogh)'
    else
        -- return 'Solarized Dark (Gogh)'
        return 'Solarized Light (Gogh)'
    end
end

function module.apply_to_config(config)
    config.color_scheme = scheme_for_appearance(get_appearance())
end

return module
