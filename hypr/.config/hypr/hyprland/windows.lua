------------------------------
--- WINDOWS AND WORKSPACES ---
------------------------------

-- Ignore maximize requests from apps. You'll probably like this.
hl.window_rule({
	name = "ignore-maximize-requests-from-apps",
	match = { class = ".*" },
	suppress_event = "maximize"
})

-- Fix some dragging issues with XWayland
hl.window_rule({
	name  = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

-- Open Chrome's auto-start in workspace 2
hl.window_rule({
	name = "chrome-startup-to-workspace-2",
	match = { class = "google-chrome" },
	workspace = "2 silent"
})
