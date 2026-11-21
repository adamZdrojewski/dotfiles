local utils = require("utils")

local hostname = utils.get_hostname()

-- Autostart my stuff
hl.on("hyprland.start", function()
  hl.exec_cmd("[workspace 1 silent] ghostty")
  hl.exec_cmd("[workspace 2 silent] google-chrome-stable")

  -- Only start Feishin on my desktop
  if hostname == "AZ-HUR-PC-1311" then
  	hl.exec_cmd("[workspace 3 silent] feishin")
  end
end)
