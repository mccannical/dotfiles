-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.scrollback_lines = 100000

-- For example, changing the color scheme:
config.color_scheme = "Spacegray Eighties Dull (Gogh)"

-- -- You can specify some parameters to influence the font selection;
-- -- for example, this selects a Bold, Italic font variant.
-- config.font = wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false })

config.font_size = 12

-- Font for terminal.
config.font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = false })
-- Font for the tabs
config.window_frame = {
	font = wezterm.font({ family = "FiraCode Nerd Font Mono", weight = "Bold" }),
}

config.window_background_image_hsb = {
	-- Darken the background image by reducing it to 1/3rd
	brightness = 0.3,
	-- You can adjust the hue by scaling its value.
	-- a multiplier of 1.0 leaves the value unchanged.
	hue = 1.0,

	-- You can adjust the saturation also.
	saturation = 1.0,
}

-- Disable window decorations.
config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
-- and finally, return the configuration to wezterm
return config
