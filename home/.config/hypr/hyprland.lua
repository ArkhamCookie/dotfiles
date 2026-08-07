--- https://arkhamcookie.com

-- To enable debug info, uncomment the next line
-- hl.env("HYPRLAND_TRACE", "1")

--- MONITORS
--- https://wiki.hypr.land/Configuring/Basics/Monitors/

require("monitors")


--- ENVIRONMENT
--- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")


--- AUTOSTART
--- https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function ()
	hl.exec_cmd("hypridle") -- Start hypridle
	hl.exec_cmd("wl-paste --watch cliphist store") -- Store clipboard in cliphist
	hl.exec_cmd("anyrun daemon") -- Start anyrun daemon for better performance

	-- Get screensharing working on Linux
	hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
	hl.exec_cmd("systemctl --user start xdg-desktop-portal-hyprland.service")
end)


--- CURSOR
--- https://wiki.hypr.land/Configuring/Basics/Variables/#cursor

hl.env("HYPRCURSOR_SIZE", "24")
hl.env("XCURSOR_SIZE", "24")


--- INPUT
--- https://wiki.hypr.land/Configuring/Basics/Variables/#input

hl.config({
	input = {
		kb_layout = "us",
	}
})


--- BINDINGS
--- https://wiki.hypr.land/Configuring/Basics/Binds/

require("binds")


--- WINDOWS RULES
--- https://wiki.hypr.land/Configuring/Basics/Window-Rules/

require("windows")
