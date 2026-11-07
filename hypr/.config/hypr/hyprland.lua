---------------------------
-- OMARCHY DEFAULT STUFF --
---------------------------

-- Omarchy's bootstrap keeps path setup out of this user config.
dofile((os.getenv("OMARCHY_PATH") or "/usr/share/omarchy") .. "/default/hypr/bootstrap.lua")

-- Load Omarchy defaults.
require("default.hypr.omarchy")


------------------------
-- SOURCE OTHER FILES --
------------------------

require("hypr.monitors")
require("hypr.bindings")
require("hypr.look_and_feel")
require("hypr.autostart")
require("hypr.input")

-- Toggle config flags dynamically.
require("default.hypr.toggles")


-- Stop the whole "each monitor gets its own workspaces" thing
-- Solution from: https://github.com/sergey-frv/omarchy-supplement/commit/7c5aaa21e23410142335ae22bd27093f4132c36b
o.workspaces.reconcile = function() end
o.workspaces.focus = function(slot)
	return hl.dsp.focus({ workspace = tostring(slot) })
end
os.remove(os.getenv("HOME") .. "/.local/state/omarchy/monitor-workspaces")
os.remove(os.getenv("HOME") .. "/.local/state/omarchy/monitor-workspaces-merged")

for workspace = 1, 10 do
	local key = "code:" .. tostring(workspace + 9)
	local id = tostring(workspace)
	o.rebind("SUPER + " .. key, "Switch to workspace " .. workspace, hl.dsp.focus({ workspace = id }))
	o.rebind("SUPER + SHIFT + " .. key, "Move window to workspace " .. workspace, hl.dsp.window.move({ workspace = id }))
	o.rebind("SUPER + SHIFT + ALT + " .. key, "Move window silently to workspace " .. workspace, hl.dsp.window.move({ workspace = id, follow = false }))
end
o.rebind("SUPER + mouse_down", "Scroll active workspace forward", hl.dsp.focus({ workspace = "e+1" }))
o.rebind("SUPER + mouse_up", "Scroll active workspace backward", hl.dsp.focus({ workspace = "e-1" }))
