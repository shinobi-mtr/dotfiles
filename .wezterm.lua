local wezterm = require 'wezterm'

local mux = wezterm.mux

wezterm.on('gui-startup', function(window)
  local tab, pane, window = mux.spawn_window(cmd or {})
  local gui_window = window:gui_window();
  gui_window:perform_action(wezterm.action.ToggleFullScreen, pane)
end)

return {
        adjust_window_size_when_changing_font_size = false,
        color_scheme = 'Catppuccin Mocha',
        enable_tab_bar = false,
        font_size = 12.0,
        font = wezterm.font('JetBrains Mono'),
        default_prog = { 'wsl', '~' },
        window_background_opacity = 1.0,
        window_decorations = 'RESIZE',
        keys = {
                {
                        key = 'q',
                        mods = 'CTRL',
                        action = wezterm.action.ToggleFullScreen,
                },
                {
                        key = '\'',
                        mods = 'CTRL',
                        action = wezterm.action.ClearScrollback 'ScrollbackAndViewport',
                },
        },
        mouse_bindings = {
          {
            event = { Up = { streak = 1, button = 'Left' } },
            mods = 'CTRL',
            action = wezterm.action.OpenLinkAtMouseCursor,
          },
        },
}
