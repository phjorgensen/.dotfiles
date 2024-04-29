-- Pull in the wezterm API
local wezterm = require 'wezterm';

-- This will hold the configuration.
local config = wezterm.config_builder();

config.font = wezterm.font 'BerkeleyMono';
config.color_scheme = 'Catppuccin Mocha';

config.window_background_opacity = 0.8;
config.hide_tab_bar_if_only_one_tab = true;

config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' };

return config;
