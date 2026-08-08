hl.config({
	ecosystem = {
		no_update_news = true,
		no_donation_nag = true
	}
})


-----------------
--- AUTOSTART ---
-----------------

hl.on("hyprland.start", function()
	-- Catppuccin
	hl.exec_cmd("hyprctl setcursor catppuccin-mocha-dark-cursors 32")
	hl.exec_cmd("exec-once = gsettings set org.gnome.desktop.interface cursor-theme catppuccin-mocha-dark-cursors	# command also present in hypridle.conf")

	-- Start programs
	hl.exec_cmd("waybar")
	hl.exec_cmd("swaync")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("hyprpaper")

	-- Enable numlock
	hl.exec_cmd("hyprctl keyword input:numlock_by_default true")

	-- Start gui auth agent
	hl.exec_cmd("systemctl --user start hyprpolkitagent")

	-- Autostart Apps
	hl.exec_cmd("[workspace 1 silent] ghostty")
	hl.exec_cmd("[workspace 2 silent] google-chrome-stable --disable-features=WaylandWpColorManagerV1")
	hl.exec_cmd("[workspace 3 silent] feishin")
	hl.exec_cmd("sleep 5 && hyprctl keyword 'windowrule[chrome-startup-to-workspace-2]:enable false'")
end)


-----------------------------
--- ENVIRONMENT VARIABLES ---
-----------------------------

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")


--------------------------
--- SOURCE OTHER FILES ---
--------------------------

require("~/.config/hypr/hyprland/monitors")
require("~/.config/hypr/hyprland/input")
require("~/.config/hypr/hyprland/lookAndFeel")
require("~/.config/hypr/hyprland/keybindings")
require("~/.config/hypr/hyprland/windows")
