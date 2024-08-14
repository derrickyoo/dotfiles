-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = 'Ayu Mirage'
config.font = wezterm.font('Fira Code', { weight = 'Thin' }) 
config.font_size = 16
config.line_height = 1.25

-- and finally, reeturn the configuration to wezterm
return config

