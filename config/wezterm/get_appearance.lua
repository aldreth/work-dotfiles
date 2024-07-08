local wezterm = require 'wezterm'

-- wezterm.gui is not available to the mux server, so take care to
-- do something reasonable when this config is evaluated by the mux
return function()
    if wezterm.gui then
        return wezterm.gui.get_appearance()
    end
    return 'Light'
end
