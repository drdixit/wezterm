local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.front_end = "Software"
config.max_fps = 60
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 1
config.cursor_blink_rate = 500
config.term = "wezterm"

-- Base: Tokyo Night scheme + ONLY your Neovim overrides
config.color_scheme = "Tokyo Night"
config.colors = {
  background = "#011628",
  foreground = "#CBE0F0",
  cursor_bg = "#CBE0F0",
  cursor_border = "#CBE0F0",
  selection_bg = "#275378",
  selection_fg = "#CBE0F0",
  scrollbar_thumb = "#627E97",
  split = "#547998",
}
-- config.colors = {
  -- 	foreground = "#CBE0F0",
  -- 	background = "#011423",
  -- 	cursor_bg = "#47FF9C",
  -- 	cursor_border = "#47FF9C",
  -- 	cursor_fg = "#011423",
  -- 	selection_bg = "#033259",
  -- 	selection_fg = "#CBE0F0",
  -- 	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
  -- 	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
  -- }

  config.font = wezterm.font("JetBrainsMono Nerd Font")
  config.font_size = 16.0
  config.cell_width = 0.9
  -- config.window_background_opacity = 0.9
  config.prefer_egl = true
  config.window_padding = {
    left = 4,
    right = 4,
    top = 0,
    bottom = 0,
  }

  local wsl_domains = wezterm.default_wsl_domains()
  config.wsl_domains = wsl_domains
  config.default_domain = "WSL:Ubuntu" -- Launches WSL Ubuntu by default
  -- config.default_prog = { "powershell.exe" }

  config.enable_tab_bar = false
  config.audible_bell = "Disabled"


  config.keys = {
    -- Ctrl+Space with CSI u protocol
    {
      key = " ",
      mods = "CTRL",
      action = wezterm.action.SendString("\x1b[32;5u"),
    },
    {
      key = "h",
      mods = "CTRL|SHIFT",
      action = wezterm.action.SendKey({
        key = "h",
        mods = "CTRL|SHIFT",
      }),
    },
    {
      key = "j",
      mods = "CTRL|SHIFT",
      action = wezterm.action.SendKey({
        key = "j",
        mods = "CTRL|SHIFT",
      }),
    },
    {
      key = "k",
      mods = "CTRL|SHIFT",
      action = wezterm.action.SendKey({
        key = "k",
        mods = "CTRL|SHIFT",
      }),
    },
    {
      key = "l",
      mods = "CTRL|SHIFT",
      action = wezterm.action.SendKey({
        key = "l",
        mods = "CTRL|SHIFT",
      }),
    },
  }

  return config
