-- Pull in the wezterm API
local wezterm = require 'wezterm';

-- This will hold the configuration.
local config = wezterm.config_builder();

config.font = wezterm.font 'MonaspaceRadon';
config.color_scheme = 'Catppuccin Mocha';

config.window_background_opacity = 0.8;
config.hide_tab_bar_if_only_one_tab = true;

return config;
