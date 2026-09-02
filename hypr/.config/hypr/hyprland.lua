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

-- Toggle config flags dynamically.
require("default.hypr.toggles")
