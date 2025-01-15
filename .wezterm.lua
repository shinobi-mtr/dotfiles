local wezterm = require 'wezterm'


wezterm.on("gui-startup", function()
  local tab, pane, window = mux.spawn_window{}
  window:gui_window():maximize()
end)

return {
        adjust_window_size_when_changing_font_size = false,
        color_scheme = 'Catppuccin Mocha',
        enable_tab_bar = false,
        font_size = 12.0,
        font = wezterm.font('JetBrains Mono'),

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
