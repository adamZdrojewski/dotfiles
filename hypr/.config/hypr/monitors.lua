local utils = require("utils")

local hostname = utils.get_hostname()

hl.env("GDK_SCALE", tostring(2))

if hostname == "AZ-HUR-PC-1311" then
  -- Desktop config
  hl.monitor({
	  output = "HDMI-A-1",
	  mode = "preferred",
	  position = "0x0",
	  scale = "auto"
  })
  hl.monitor({
	  output = "DVI-D-1",
	  mode = "preferred",
	  position = "960x-1080",
	  scale = "auto"
  })
  hl.monitor({
	  output = "DP-1",
	  mode = "preferred",
	  position = "-960x-1080",
	  scale = "auto"
  })

  hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-1", default = true })
  hl.workspace_rule({ workspace = "2", monitor = "DVI-D-1", default = true })
  hl.workspace_rule({ workspace = "3", monitor = "DP-1", default = true })
  hl.workspace_rule({ workspace = "4", monitor = "HDMI-A-1", default = false })
  hl.workspace_rule({ workspace = "5", monitor = "DVI-D-1", default = false })
  hl.workspace_rule({ workspace = "6", monitor = "DP-1", default = false })
elseif hostname == "AZ-HUR-LT-0002" then
  -- Laptop config
  hl.monitor({
	  output = "eDP-1",
	  mode = "1920x1080",
	  position = "0x0",
	  scale = "1.25"
  })
end
