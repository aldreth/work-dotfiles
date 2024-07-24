local wezterm = require 'wezterm'
local get_appearance = require 'get_appearance'
local get_font = require 'get_font'

local module = {}

local theme_colors = {
    pale_yellow = '#fefbf3',
    pale_blue = '#e3eafd'
}
local solarized_colors = {
    dark = {
        background = '#002B36'
    },
    light = {
        background = '#002B36',
        pale_yellow = '#fefbf3'
    }
}

local function colors_for_appearance(appearance)
    -- if appearance:find 'Dark' then
    -- return
    -- {
    --     -- the window is focused
    --     -- active_titlebar_bg = solarized_colors.dark.background,
    --     active_titlebar_bg = '#aaaaaa',

    --     -- The overall background color of the tab bar when
    --     -- the window is not focused
    --     -- inactive_titlebar_bg = solarized_colors.dark.background,
    --     inactive_titlebar_bg = '#373B2C',

    --     -- The color of the inactive tab bar edge/divider
    --     inactive_tab_edge = '#575757',
    -- }
    -- else
    return {
        -- The overall background color of the tab bar when
        -- the window is focused
        active_titlebar_bg = theme_colors.pale_yellow,
        -- the window is not focused
        inactive_titlebar_bg = theme_colors.pale_yellow,

        -- The color of the inactive tab bar edge/divider
        inactive_tab_edge = theme_colors.pale_blue,

        -- The active tab is the one that has focus in the window
        -- The color of the background area for the tab
        active_tab_bg_color = theme_colors.pale_blue,
        -- The color of the text for the tab
        active_tab_fg_color = '#657B83',

        -- Inactive tabs are the tabs that do not have focus
        -- The color of the background area for the tabs
        inactive_tab_bg_color = theme_colors.pale_yellow,
        -- The color of the text for the tabs
        inactive_tab_fg_color = '#808080',

        -- The new tab button that let you create new tabs
        -- The color of the background area for the tab
        new_tab_bg_color = theme_colors.pale_blue,
        -- The color of the text for the tab
        new_tab_fg_color = '#808080',

        -- You can configure some alternate styling when the mouse pointer
        -- moves over the new tab button
        -- The color of the background area for the tab
        new_tab_hover_bg_color = '#b3c6fa',
        -- The color of the text for the tab
        new_tab_hover_fg_color = '#808080'
    }
    -- end
end

function module.apply_to_config(config)
    local colors = colors_for_appearance(get_appearance())
    config.window_frame = {
        -- The font used in the tab bar.
        -- Roboto Bold is the default; this font is bundled
        -- with wezterm.
        -- Whatever font is selected here, it will have the
        -- main font setting appended to it to pick up any
        -- fallback fonts you may have used there.
        font = get_font(),

        -- The size of the font in the tab bar.
        -- Default to 10.0 on Windows but 12.0 on other systems
        font_size = 14.0,

        -- The overall background color of the tab bar when
        -- the window is focused
        active_titlebar_bg = colors.active_titlebar_bg,

        -- The overall background color of the tab bar when
        -- the window is not focused
        inactive_titlebar_bg = colors.inactive_titlebar_bg
    }

    config.colors = {
        tab_bar = {
            -- The color of the strip that goes along the top of the window
            -- (does not apply when fancy tab bar is in use)
            background = '#0b0022',

            inactive_tab_edge = colors.inactive_tab_edge,

            -- The active tab is the one that has focus in the window
            active_tab = {
                -- The color of the background area for the tab
                bg_color = colors.active_tab_bg_color,
                -- The color of the text for the tab
                fg_color = colors.active_tab_fg_color,

                -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
                -- label shown for this tab.
                -- The default is "Normal"
                intensity = 'Normal',

                -- Specify whether you want "None", "Single" or "Double" underline for
                -- label shown for this tab.
                -- The default is "None"
                underline = 'None',

                -- Specify whether you want the text to be italic (true) or not (false)
                -- for this tab.  The default is false.
                italic = false,

                -- Specify whether you want the text to be rendered with strikethrough (true)
                -- or not for this tab.  The default is false.
                strikethrough = false
            },

            -- Inactive tabs are the tabs that do not have focus
            inactive_tab = {
                bg_color = colors.inactive_tab_bg_color,
                fg_color = colors.inactive_tab_fg_color,

                -- The same options that were listed under the `active_tab` section above
                -- can also be used for `inactive_tab`.
                strikethrough = true
            },

            -- You can configure some alternate styling when the mouse pointer
            -- moves over inactive tabs
            inactive_tab_hover = {
                bg_color = colors.inactive_tab_bg_color,
                fg_color = colors.inactive_tab_fg_color,

                -- The same options that were listed under the `active_tab` section above
                -- can also be used for `inactive_tab_hover`.
                italic = true
            },

            -- The new tab button that let you create new tabs
            new_tab = {
                bg_color = colors.new_tab_bg_color,
                fg_color = colors.new_tab_fg_color

                -- The same options that were listed under the `active_tab` section above
                -- can also be used for `new_tab`.
            },

            -- You can configure some alternate styling when the mouse pointer
            -- moves over the new tab button
            new_tab_hover = {
                bg_color = colors.new_tab_hover_bg_color,
                fg_color = colors.new_tab_hover_fg_color,
                italic = true

                -- The same options that were listed under the `active_tab` section above
                -- can also be used for `new_tab_hover`.
            }
        }
    }
end

return module
