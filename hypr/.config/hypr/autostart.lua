-- Autostart my stuff
hl.on("hyprland.start", function()
  hl.exec_cmd("[workspace 1 silent] ghostty")
  hl.exec_cmd("[workspace 2 silent] google-chrome-stable")
  hl.exec_cmd("[workspace 3 silent] feishin")
end)
