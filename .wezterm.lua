-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
config = {
    color_scheme = "ayu",
    hide_tab_bar_if_only_one_tab = false,
    use_fancy_tab_bar = false,
    window_frame = {
        inactive_titlebar_bg = "none",
        active_titlebar_bg = "none",
    },
    -- window_decorations = "RESIZE",
    window_background_opacity = .75,
    macos_window_background_blur = 75,
    window_close_confirmation = "NeverPrompt",
    automatically_reload_config = true,
    enable_tab_bar = true,
    font_size = 14,
    -- font = wezterm.font('JetBrainsMono Nerd Font', { weight = 'Thin' }),
    font = wezterm.font('JetBrainsMono Nerd Font'),
    line_height = 1.25,
}

config.keys = {
  -- Rebind OPT-Left, OPT-Right as ALT-b, ALT-f respectively to match Terminal.app behavior
  {
    key = 'LeftArrow',
    mods = 'OPT',
    action = act.SendKey {
      key = 'b',
      mods = 'ALT',
    },
  },
  {
    key = 'RightArrow',
    mods = 'OPT',
    action = act.SendKey { key = 'f', mods = 'ALT' },
  },
}

-- And finally, return the configuration to wezterm:
return config

