----------------
--- MONITORS ---
----------------

-- Laptop Monitors
hl.monitor({
	output = "eDP-1",
	mode = "1920x1080",
	position = "0x0",
	scale = "1.25"
})

-- Disable laptop screen if lid is closed
hl.bind("switch:on:Lid Switch", hl.dsp.exec_cmd("~/.local/bin/handle-lid close"), { locked = true })
hl.bind("switch:off:Lid Switch", hl.dsp.exec_cmd("~/.local/bin/handle-lid open"), { locked = true })
