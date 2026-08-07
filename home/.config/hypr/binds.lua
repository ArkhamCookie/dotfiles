--- BINDS
--- https://wiki.hypr.land/Configuring/Basics/Binds/

local main_mod = "SUPER"

--- Manage Hyprland

hl.bind(main_mod .. " + L", hl.dsp.exec_cmd("hyprlock")) -- Lock Hyprland
-- hl.bind(main_mod .. " + M", hl.dsp.exec_cmd(""))

--- Launch Programs

hl.bind(main_mod .. " + D", hl.dsp.exec_cmd("anyrun")) -- Launch anyrun
hl.bind(main_mod .. " + return", hl.dsp.exec_cmd("alacritty")) -- Launch terminal
hl.bind(main_mod .. " + C", hl.dsp.exec_cmd("cliphist list | wofi -S dmenu | cliphist decode | wl-copy"))

--- Manage Windows

hl.bind(main_mod .. " + Q", hl.dsp.window.close()) -- Close active window
hl.bind(main_mod .. " + SHIFT + Q", hl.dsp.window.kill()) -- Force close active window
hl.bind(main_mod .. " + F", hl.dsp.window.fullscreen()) -- Toggle fullscreen of active window
hl.bind(main_mod .. " + V", hl.dsp.window.float()) -- Toggle floating on active window

--- Movement

-- Move focus with main_mod + arrow keys
hl.bind(main_mod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(main_mod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(main_mod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(main_mod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Move windows with main_mod + SHIFT + arrow keys
hl.bind(main_mod .. " + SHIFT + left", hl.dsp.window.move({ direction = "left" }))
hl.bind(main_mod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(main_mod .. " + SHIFT + up", hl.dsp.window.move({ direction = "up" }))
hl.bind(main_mod .. " + SHIFT + down", hl.dsp.window.move({ direction = "down" }))

--- Workspaces

for i = 0, 9 do
	hl.bind(main_mod .. " + " .. i, hl.dsp.focus({ workspace = i })) -- Switch to i workspace
	hl.bind(main_mod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i })) -- Move window to i workspace
end

-- Scoll through open workspaces with mouse main_mod + scroll wheel
hl.bind(main_mod .. " + mouse_down", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(main_mod .. " + mouse_up", hl.dsp.focus({ workspace = "e+1" }))

-- Resizing/Moving Windows w/ Mouse
hl.bind(main_mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true }) -- Move window around with LMB
hl.bind(main_mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

--- Screenshots

hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m window")) -- Screenshot window
hl.bind(main_mod .. " + PRINT", hl.dsp.exec_cmd("hyprshot -m region")) -- Screenshot selectable region
hl.bind(main_mod .. " + SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m output")) -- Screenshot monitor

--- Multimedia

-- Volume Control
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-",
	{
		locked = true,
		repeated = true,
	}
))
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+",
	{
		locked = true,
		repeated = true,
	}
))
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle",
	{
		locked = true,
		repeated = true,
	}
))

-- Microphone mute toggle
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle",
	{
		locked = true,
		repeated = true,
	}
))

-- Monitor brightness
hl.bind(
	"XF86MonBrightnessUp",
	hl.dsp.exec_cmd("brightnessctl s 10%-",
	{
		locked = true,
		repeated = true,
	}
))
hl.bind(
	"XF86MonBrightnessUp",
	hl.dsp.exec_cmd("brightnessctl s 10%+",
	{
		locked = true,
		repeated = true,
	}
))

-- Media control
hl.bind(
	"XF86AudioPrev",
	hl.dsp.exec_cmd("playerctl previous"),
	{ locked = true }
)
hl.bind(
	"XF86AudioNext",
	hl.dsp.exec_cmd("playerctl next"),
	{ locked = true }
)
hl.bind(
	"XF86AudioPlay",
	hl.dsp.exec_cmd("playerctl play-pause"),
	{ locked = true }
)hl.bind(
	"XF86AudioPause",
	hl.dsp.exec_cmd("playerctl play-pause"),
	{ locked = true }
)

--- Misc

hl.bind(main_mod .. " + SHIFT + j", hl.dsp.exec_cmd("anyrun --plugins libsymbols.so")) -- Symbol lookup with anyrun


