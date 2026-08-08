----------------
--- MONITORS ---
----------------

-- Home PC Monitors
hl.monitor({
	output = "HDMI-A-4",
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
	output = "DP-4",
	mode = "preferred",
	position = "-960x-1080",
	scale = "auto"
})


------------------
--- WORKSPACES ---
------------------

hl.workspace_rule({ workspace = 1, monitor = "HDMI-A-4", default = true })
hl.workspace_rule({ workspace = 2, monitor = "DVI-D-1", default = true })
hl.workspace_rule({ workspace = 3, monitor = "DP-4", default = true })
hl.workspace_rule({ workspace = 4, monitor = "HDMI-A-4", default = false })
hl.workspace_rule({ workspace = 5, monitor = "DVI-D-1", default = false })
hl.workspace_rule({ workspace = 6, monitor = "DP-4", default = false })
