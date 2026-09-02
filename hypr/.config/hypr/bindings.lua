-- System bindings are at /usr/share/omarchy/default/hypr/bindings

-- Move window focus with vim keys
hl.unbind("SUPER + H")
hl.unbind("SUPER + J")
hl.unbind("SUPER + K")
hl.unbind("SUPER + L")
o.bind("SUPER + H", "Focus on left window", hl.dsp.focus({ direction = "left" }))
o.bind("SUPER + J", "Focus on below window", hl.dsp.focus({ direction = "down" }))
o.bind("SUPER + K", "Focus on above window", hl.dsp.focus({ direction = "up" }))
o.bind("SUPER + L", "Focus on right window", hl.dsp.focus({ direction = "right" }))

-- Fullscreen
hl.unbind("SUPER + F")
hl.unbind("SUPER + ALT + F")
o.bind("SUPER + ALT + F", "Full screen", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
o.bind("SUPER + F", "Full width", hl.dsp.window.fullscreen({ mode = "maximized" }))

-- Nightlight
hl.unbind("SUPER + CTRL + N")
o.bind("SUPER + N", "Toggle nightlight", "pgrep -x hyprsunset > /dev/null && killall hyprsunset || hyprsunset -t 3000 &")

-- Lock
hl.unbind("SUPER + CTRL + L")
hl.unbind("SUPER + ESCAPE")
o.bind("SUPER + ESCAPE", "Lock system", "omarchy-system-lock")
o.bind("SUPER + CTRL + L", "System menu", "omarchy-menu toggle system")

-- Some random bindings
o.bind("SUPER + M", "Keybindings", "omarchy-menu-keybindings")
o.bind("SUPER + B", "Toggle window split", hl.dsp.layout("togglesplit"))
o.bind("SUPER + E", "File manager", { omarchy = "nautilus" })
