-------------
--- INPUT ---
-------------

-- https://wiki.hyprland.org/Configuring/Variables/#input
hl.config({
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_options = "grp:alt_shift_toggle",
		resolve_binds_by_sym = "1",
		kb_model = "",
		kb_rules = "",

		numlock_by_default = true,

		follow_mouse = 1,

		sensitivity = 0,

		touchpad = {
			natural_scroll = true
		}
	}
})

-- https://wiki.hyprland.org/Configuring/Variables/#gestures
hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace"
})

-- Example per-device config
-- See https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs for more
hl.device({
	name = "epic-mouse-v1",
	sensitivity = "-0.5"
})
